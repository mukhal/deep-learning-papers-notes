## [AutoSeM: Automatic Task Selection and Mixing in Multi-Task Learning](https://arxiv.org/abs/1904.04153)

### Relevant Concepts:
  * **Multi-armed bandit problem**: is a classical *reinforcement learning* problem where we have a set of arms each having a success rate. Pulling any of these arms gives you a stocahstic reward of +1 in case of success and -1 in case of failure. The major challenge is that the agent has no idea of the success rate of any of the arms and it has to determine these rates by directly interacting with the arms and observing the reward.
  
  <img src='https://cdn-images-1.medium.com/max/1600/1*Tt8A6mP98ibBlrlFD5UJxg.png' width="400" height="200">
  
  *[image source](https://towardsdatascience.com/solving-the-multi-armed-bandit-problem-b72de40db97c)*
  
  * **Beta Distribution** : In short, the beta distribution can be understood as representing a probability distribution of probabilities- that is, it represents all the possible values of a probability when we don’t know what that probability is. Read [this](http://varianceexplained.org/statistics/beta_distribution_and_baseball/) for more.


* Two major challenges in Mutli-task learning settings are : 
  1. Selecting relevant auxiliary tasks whose learning should positively affect our main task learning.
  2. Learning the mixing ratio between training examples in different tasks.
  
* The brute force approach of trying all possible task combinations is intractable.
* The paper proposes a **two-stage pipeline** for tackling the previous two issues, respectively :
  1. The **1st** stage automatically selects a set of auxiliary tasks.
  2. The **2nd** stage automatically learns the training mixing ratio between the selected set of tasks.
  
  
 * **Automatic Task Selection**: 
 
  * The process of selecting the relevant set of auxiliary tasks with which we train the primary task is formulated as a **multi-armed bandit**, with different auxiliary tasks representing the bandit arms.
  
  <a href="https://ibb.co/KL5KHkc"><img src="https://i.ibb.co/rcQdJSK/image.png" alt="image" border="0"></a>
  
  * The success rate of an arm represents the utility of its corresponding task, that is its contribution to the learning of the primary task. 
  * The reward of using a task is defined to be 1 if sampling the task improves the validation metric on the primary task, otherwise its 0. 

**More detailed exaplanation** :
 * The probability distributions of task utilities is represented by a Beta Distrbution where each task has its alpha and beta parameters. 
   <a href="https://imgbb.com/"><img src="https://i.ibb.co/x34Jvy9/image.png" alt="image" border="0"></a>
   
 * The Alpha and Beta of a given task are updated using a simple Bayes rule depending on the validation metric improvement on the primary task (reward) obtained by training on the corresponding task.
 
  
  
  
  
