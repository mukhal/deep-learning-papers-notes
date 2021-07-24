### Your GAN is Secretly an Energy-based Model and You Should Use Discriminator Driven Latent Sampling

* The paper argues that GANs are not that much different from Energy-Based Models
* We cannot sample from that Energy-based model in the pixel space
* However, we can sample from that EBM in the generator's **latent** space.

* The paper proposes Discriminator Driven Latent Sampling (DDLS), a technique to sample from the Generator of GANs in the latent space in a way that might correct biases and error in the generator and, thus, obtain high-quality samples.

* DDLS samples from the whole GAN as an EBM, rather than from the generator alone.

* An energy-based model takes the form of p(x) = exp(-E(x)) / Z. GANs can be reforumulated to have a similar form. p*_d = p_g(x)e^d(x) / Z. Where p_g(x) is probability of x according to the generator, d(x) = p_d/p_g

* The paper states two problems with sampling from p*_d: High-dimensionality of the pixel space prohibits MCMC methods. Second, p_g(x) is implicity defined, since we only use the generator through the latent space. We can't sample or evaluate p_g(x) directly from it.

* Here comes sampling in the latent space
