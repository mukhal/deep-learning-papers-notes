
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
    * Similar to one-step Q-learning with a slighlty different target equation.

* **Asynchronous n-step Q-Learning** 
   * n-step Q-learning runs the policy for n-steps and updated Q(s_t, a) towards the n-step return r_t + gamma* r_t+1 + gamma^2 * r_t+2 + .. gamma^{n-1}* r_t+n-1 + gamma^n * max_a' Q(s',a').
   * In order to compute a single update, the algorithm first selects actions using its exploration policy for up to *tmax* steps or until a terminal state is reached. The algorithm then computes gradients for n-step Q-learning updates for each of the state-action pairs encountered since the last update. Meaning that in addition to updating Q(s_t, a_t), Q(s_t+1, a_t+1), Q(s_t+2, a_t+2) ... are also updated with their repsective returns until Q(s_t+n-1, a_t+n-1) is also updated for a total of *tmax* updates. These accumulated updates are applied in a single gradient step.


#### Definitions
* **Experience Replay** : Storing agent's data in a memory that is then batched or sampled to improve learning. Such aggregation offered by Experience Replay helps with non-stationary and correlated updates (which is the case with online learning)
