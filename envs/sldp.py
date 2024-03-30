import gym
import numpy as np


class SlidingPuzzles:
    metadata = {}

    def __init__(self, variation, **kwargs):
        import sliding_puzzles

        self.variation = variation
        self._env = sliding_puzzles.make(
            variation=variation, render_mode="rgb_array", **kwargs
        )
        self.reward_range = [-np.inf, self._env.unwrapped.win_reward]
        self.action_space = gym.spaces.Discrete(self._env.unwrapped.action_space.n)

        self.success_metrics = ["log_success_mean", "log_success_std", "log_success_max", "log_success_min"]

    @property
    def observation_space(self):

        if self.variation == "image":
            spaces = {
                "image": gym.spaces.Box(
                    low=self._env.observation_space.low,
                    high=self._env.observation_space.high,
                    shape=self._env.observation_space.shape,
                    dtype=self._env.observation_space.dtype,
                )
            }
        else:
            spaces = {
                # the render size is W x H, so the returned matrix must be H x W x 3
                "image": gym.spaces.Box(
                    0, 255, self._env.unwrapped.render_size[::-1] + (3,), dtype=np.uint8
                ),
                "state": gym.spaces.Box(
                    low=self._env.observation_space.low,
                    high=self._env.observation_space.high,
                    shape=self._env.observation_space.shape,
                    dtype=self._env.observation_space.dtype,
                ),
            }
        for metric in self.success_metrics:
            spaces[metric] = gym.spaces.Box(0, 1, shape=(1,), dtype=np.float32)
        return gym.spaces.Dict(spaces)

    def _obs(self, env_obs, is_first, is_last, is_terminal, info):
        obs = {
            "is_first": is_first,
            "is_last": is_last,
            "is_terminal": is_terminal,
        }
        for metric in self.success_metrics:
            obs[metric] = float(info.get("is_success", 0))

        if self.variation == "image":
            obs["image"] = env_obs
        else:
            obs["state"] = env_obs
            obs["image"] = self._env.render()
        return obs

    def step(self, action):
        obs, reward, done, truncated, info = self._env.step(action)
        obs = self._obs(
            obs, False, done, is_terminal=bool(info.get("is_success", done)), info=info,
        )
        return obs, reward, done, info

    def reset(self):
        obs, info = self._env.reset()
        return self._obs(obs, True, False, False, info)

    def render(self, *args, **kwargs):
        return self._env.render()

    def close(self):
        return self._env.close()
