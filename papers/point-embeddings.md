
## Generalizing Point Embeddings using the Wasserstein Space of Elliptical Distributions


* This paper builds on top of (Vilnis and McCallum, 2015) work, which proposed to embed words using gaussian distributions. The idea is that every word is a gaussian distribution with its own mean and (diagonal) variance. 
* In order to propose any type of embeddings, you need to define 3 components: Distance Metric, Loss function, and a set of positive and negative training pairs. For Gaussian embeddings, the distance metric was the likelihood product kernel (or KL-divergenve), Loss function is defiend as a max-margin loss where positive pairs should produce lower energy than negative ones.
* One problem with Gaussian embeddings is that naturally the don't subsume point embeddings when the variance goes to zero. The problem is that the KL divergence can go up to inifnity when the variance is small. That means that Gaussian embeddings cannot reduce to point embeddings, which makes them less flexible. 
* In this work, the authors propose a different type of embeddings that in some sense subsumes the Gaussian Embeddings (as gaussian distributions are a special case of Elliptical Distributions), and that is more general in the sense that it can represent both probabilistic and points embeddings.
* This paper employs Elliptical Uniform Distributions with 2-Wasserstein as the distance metric. The authors start by producing a parametrization of elliptical distribution that is based on characterstic functions in order to handle cases where the scale matrix C is not full rank (non-invertible), and proceed to show the formula for the 2-Wasserstein metric in the case of elliptical uniform distributions, which depends on Bures metric :

![](https://i.imgur.com/BscgYuy.png)
* The next step would be to learn elliptical distributions that minimize (or maximize) the squared 2-Wasserstein distance according to whether we have positive or negative pairs. Note that we must constrain the scale parameter to the manifold of positive semi-definite matrices. One idea is to do Manifold Optimization, which is done using the Riemannian gradient descent with the following update rule to minimize 0.5 B^2 (A, B):

![](https://i.imgur.com/SqK7YEH.png)

However, when the step size becomes negative for some reason, this could lead to lack of geodisicity i.e the resulting distribution no longer falls on the geodesic between A and B, leading to degenerate scale parameters A'. 

* Another simploer way to handle the PSD constraint for the scale parameters is to rewrite A in the factor form  A = L L' and it can be shown that the derivative of the Bures metric w.r.t the factor matrix L becomes 

![](https://i.imgur.com/whFXxp8.png)

It can be proven that these updates are equivalent to the Rienmann gradient descent updates while they only require linear updates in L.
* It can be further shown that the Bures metric reduces to the Frobenuis distance between the two factors of A and B: 

![](https://i.imgur.com/u1KiAmU.png)

* Then a psuedo-dot-product is defined which is needed for word embeddings applications. The psuedo-dot-product is based on the polarization identity, which recovers the norm from do-product

The polarization identity: ![](https://i.imgur.com/Kusm4Ls.png)

Using the 2-Wasserstein distance as a surrorgate for the difference norm leads to this ![](https://i.imgur.com/0JHDWZF.png)

where this psuedo-dot-product can be a measure for similarity between the two measures u_{a,A} and u_{b,B}.

The derivative of the psuedo-dot-product w.r.t A can be computed as 
![](https://i.imgur.com/ALWrowe.png)

* For word embeddings, they use a similar max-margin loss to the one proposed in (Vilins and McCallum, 2015). One figure I really think shows the advantages of probabilistic embeddings is this:

![](https://i.imgur.com/lmR1TbG.png)

Which shows how such embeddings are able to capture hierarhcichal relationships such as hypernymy: that Bach is a type of Man, or a dog is a type of Mammal, etc.
