
## [Batch Normalization](https://arxiv.org/abs/1502.03167)

### Notes

* Change in the distribution of the input to a layer requires the layer weight to adapt each time to the new distribution. This problem is known as *internal covariate shift*

* The idea is make the input to each layer remain fixed during training such that the parameters of the layer won't have to adjust to the distribution change.

* This adjustment of the parameters could push the absolute value |x| of the inputs to the sigmoid non-linearities (if present) to saturated regions and thus slow down convergence.

* Batch Normalization normalizes each feature of the input independently with respect to the mini-batch. Subtract the mean and divide by the variance to obtain x^. 

* Now there could be a problem that normalization forces inputs to remain in the linearity regions of non-linearity functions. Hence, then add two learnt parameters that perform scaling and shifting to the normalization output to be able represent the identity transform.
