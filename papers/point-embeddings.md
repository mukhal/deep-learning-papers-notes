
## Generalizing Point Embeddings using the Wasserstein Space of Elliptical Distributions


* This paper builds on top of (Vilnis and McCallum, 2015) work, which proposed to embed words using gaussian distributions. The idea is that every word is a gaussian distribution with its own mean and (diagonal) variance. 
* In order to propose any type of embeddings, you need to define 3 components: Distance Metric, Loss function, and a set of positive and negative training pairs. For Gaussian embeddings, the distance metric was the likelihood product kernel (or KL-divergenve), Loss function is defiend as a max-margin loss where positive pairs should produce lower energy than negative ones.
* In this work, the authors propose a different type of embeddings that in some sense subsumes the Gaussian Embeddings (as gaussian distributions are a special case of Elliptical Distributions).

