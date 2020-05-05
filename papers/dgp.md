
### Distributional Reinforcement Learning for Energy-Based Sequential Models


* When Autoregressive models are given a prefix, they output a normalized conditional probability distribution over the next token x: p(x|C). They can be seen as policies while states are the context prefix provided. 
* Energy-Based Models, on the other hand, when given a context C, they output an unnormalized distribution _(potential)_ over the next token P(x|C). This probability distribution takes an exponential form that is parameterized by the energy function U(x|C).
* Training GAMs:
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
   * Off-policy works better. q(x) is initialized with an Autoregressive Model fit on the data
