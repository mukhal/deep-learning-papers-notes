
## Asynchronous Methods for Deep Reinforcement Learning


#### Summary
* Instead of experience replay, they execute multiple agents in parallel on multiple instances of the environment. This way, unlike experience replay, you are not restricted to off-policy methods (such as Q-learning) but also on-policy methods such as actor-critic.

#### Definitions
* **Experience Replay** : Storing agent's data in a memory that is then batched or sampled to improve learning. Such aggregation offered by Experience Replay helps with non-stationary and correlated updates (which is the case with online learning)
