
## [Batch Normalization](https://arxiv.org/abs/1502.03167)

### Notes

* Change in the distribution of the input to a layer requires the layer weight to adapt each time to the new distribution. This problem is known as *internal covariate shift*

* The idea is make the input to each layer remain fixed during training such that the parameters of the layer won't have to adjust to the distribution change.

* This adjustment of the parameters could push the absolute value |x| of the inputs to the sigmoid non-linearities (if present) to saturated regions and thus slow down training.

