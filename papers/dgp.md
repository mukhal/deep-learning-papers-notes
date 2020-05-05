
### [Distributional Reinforcement Learning for Energy-Based Sequential Models](https://arxiv.org/abs/1912.08517)


* When Autoregressive models are given a prefix, they output a normalized conditional probability distribution over the next token x: p(x|C). They can be seen as policies while states are the context prefix provided. 
* Energy-Based Models, on the other hand, when given a context C, they output an unnormalized distribution _(potential)_ over the next token P(x|C). This probability distribution takes an exponential form that is parameterized by the energy function U(x|C).
* **Training GAMs**:
    * Training 1: Aims at fitting the EBM to data.
    * Training 2 (RL-as-optimization): Fits an AM policy that maximizes the EMB potential
    * Training 2 (RL-as-sampling, distributional RL): Fits  an AM policy that approximates the normalized potential. 
* RL-as-sampling aims at minimizing the cross-entropy between the policy and the normalized potential:


   <img src="https://render.githubusercontent.com/render/math?math=\nabla\theta CE(p, \pi_{\theta}) = - \sum_x{p(x) \nabla_\theta log \pi_{\theta}(x) }">

   <img src="https://render.githubusercontent.com/render/math?math==- \mathbb{E}_{x \sim \pi_{\theta} (.)} \frac{p(x)}{\pi_{\theta}(x)} \nabla_\theta log  \pi_{\theta}(x)">

    <img src="https://render.githubusercontent.com/render/math?math== - \mathbb{E}_{x \sim \pi_{\theta} (.)} \frac{1}{Z} \frac{P(x)}{\pi_{\theta}(x)} \nabla_\theta log  \pi_{\theta}(x) \\ "> 
    
    
     <img src="https://render.githubusercontent.com/render/math?math==  - \frac{1}{Z} \mathbb{E}_{x \sim \pi_{\theta} (.)}  \frac{P(x)}{  \pi_{\theta}(x)} \nabla_\theta log  \pi_{\theta}(x) ">
     
     Or off-policy case:

     <img src="https://render.githubusercontent.com/render/math?math=- \frac{1}{Z} \mathbb{E}_{x \sim \q(.)}  \frac{P(x)}{  \q(x)} \nabla_\theta log  \pi_{\theta}(x) ">
     
     * On-policy case had convergence issues
     
     **Off-policy algorithm**: 
     
     
     <img src="https://i.ibb.co/yykxkHY/Screenshot-from-2020-05-05-22-09-54.png" width="200" height="100">
   
   
   * Off-policy works better. q(x) is initialized with an Autoregressive Model fit on the data
   
   
   **Questions** :
   
   1. What is the moment matching property?
   2. My understanding is the following: To convert any RL-as-optimization problem to distributional-RL: Replace the reward term by the unnormalized potential divided by the policy disctribution. Is that correct?
   3. In all the equations above, x represents a sequence, meaning to compute pi_theta(x), we have to factor it over time pi_theta(x) = pi_theta(x_n| x_n-1, .. x_1) pi_theta(x_n-1| x_n-2,..x_1)... pi_theta(x_1)
