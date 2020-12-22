
## Generalizing Point Embeddings using the Wasserstein Space of Elliptical Distributions


* This paper builds on top of (Vilnis and McCallum, 2015) work, which proposed to embed words using gaussian distributions. The idea is that every word is a gaussian distribution with its own mean and (diagonal) variance. 
* In order to propose any type of embeddings, you need to define 3 components: Distance Metric, Loss function, and a set of positive and negative training pairs. For Gaussian embeddings, the distance metric was the likelihood product kernel (or KL-divergenve), Loss function is defiend as a max-margin loss where positive pairs should produce lower energy than negative ones.
* One problem with Gaussian embeddings is that naturally the don't subsume point embeddings when the variance goes to zero. The problem is that the KL divergence can go up to inifnity when the variance is small. That means that Gaussian embeddings cannot reduce to point embeddings, which makes them less flexible. 
* In this work, the authors propose a different type of embeddings that in some sense subsumes the Gaussian Embeddings (as gaussian distributions are a special case of Elliptical Distributions), and that is more general in the sense that it can represent both probabilistic and points embeddings.
* This paper employs Elliptical Uniform Distributions with 2-Wasserstein as the distance metric. The authors start by producing a parametrization of elliptical distribution that is based on characterstic functions in order to handle cases where the scale matrix C is not full rank (non-invertible), and proceed to show the formula for the 2-Wasserstein metric in the case of elliptical uniform distributions, which depends on Bures metric :

![](https://imgur.com/BscgYuy)
* Optimization is done using the Riemannian 
