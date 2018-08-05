
## Asynchronous Methods for Deep Reinforcement Learning


#### Summary
* Instead of experience replay, they execute multiple agents in parallel on multiple instances of the environment. This way, unlike experience replay, you are not restricted to off-policy methods (such as Q-learning) but also on-policy methods such as actor-critic.
* Q-learnign aims to approximate the optimal action value function Q* by iteratively updating Q(s,a) based on the best action that ca be taken at next step s'. There's also an n-step variant which uses the reward from next n steps.
* Their framework is similar to the Gorila framework. However, the use single machine with multi-core CPU.
* They argue that multiple learners running in parallel are likely to be exploring different parts of the environment. By running different exploration policies in different threads, the overall changes being made to the parameters by multiple actor-learners applying online updates in parallel are likely to be less correlated in time than a single agent applying online updates (somehow similar to experience replay).

* **Asynchronous one-step Q-Learning** : 
    * Uses a single network for learning the Q-function.
    * Gradients are accumulated over many timesteps before they are applied.
    * Giving each thread a different exploration policy improves robustness. They use epsilon-greedy exploration and each epsilon is sampled periodically and different for each thread.

* **Asynchronous one-step Sarsa** :
    * 


#### Definitions
* **Experience Replay** : Storing agent's data in a memory that is then batched or sampled to improve learning. Such aggregation offered by Experience Replay helps with non-stationary and correlated updates (which is the case with online learning)
