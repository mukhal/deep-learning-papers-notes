
## [Proximal Policy Optimization Algorithms](https://arxiv.org/pdf/1707.06347.pdf)

### Actor Critic Problems

* High sensitivity to hyperparameters (especially step size)
* Outliers in data overwhelm training with noise.
* High variance (required baseline approaches for variance reduction, otherwise: very bad learning)


There has been some proposed approaches such as TRPO, but still then have their own problems.

### Proximal Policy Optimization

* Easily implementable:

<img src="https://i.stack.imgur.com/bVkQH.png">
The algorithm, at its purest form, has a vert simple implementation as shown above.

* Surrorgate loss. The objective function (The expected reward) is modified to a clipped version CLIP.
<img src="https://cdn-images-1.medium.com/freeze/max/1000/0*Dk8XFEOzI7yaSfLE?q=20">
 
Note that r_t(theta) is the ratio between the probability of the current action under the current policy over the current action over the previous policy and epsilon is a hypyerparameter (paper sets it to 0.2) 

The basic idea behind clipping is to prevent a large probability ratio r(theta), and thus preventing a large policy update can surely harm training. Clipping restricts the probability ratio to be in the range of [1-epsilon, 1+epsilon]

 
 



