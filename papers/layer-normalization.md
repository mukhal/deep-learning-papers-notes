
### Notes
* One drawback of Batch Normalization is that it's dependent on the batch size and can't be use with online learning where batch size=1.
* Another drawback is that BN is very difficult to use for RNNs, since "The summed inputs to the recurrent neurons in an (RNN) often vary with the length of the sequence so applying batch normalization to RNNs appears to require different statistics for different time-steps."

* Instead of normalizing the summed input to each neuron based on mini-batch statistics, as done in Batch Normalization, Layer Normalization normalizes the summed input to each neuron based on Layer statistics over all hidden units in a layer. Thus, each layer has a mean and a variance, by which the summed inputs are normalized.

* Layer normalization is independent of the batch size. It can work with any batch size (even 1 "online learning").

