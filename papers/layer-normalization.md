
### Notes

* Instead of normalizing the summed input to each neuron based on mini-batch statistics, as done in Batch Normalization, Layer Normalization normalizes the summed input to each neuron based on Layer statistics over all hidden units in a layer. Thus, each layer has a mean and a variance, by which the summed inputs are normalized.

* Layer normalization is independent of the batch size. It can work with any batch size (even 1 "online learning").

