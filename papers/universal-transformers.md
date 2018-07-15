## [Universal Transformers](https://arxiv.org/abs/1807.03819)

* Transfomers are self-attentive models proposed originally [here](https://arxiv.org/abs/1706.03762) to address a significant shortcoming of RNNs, namely their inherently sequential computation which prevents parallelization across elements of the input sequence.
* Transfomers rely mainly on self-attenttion to compute a contextualized representation of input and output symbols.
* However, transformers don't generalize well to input lengths not seen during training.



### What they did
* Proposed a new variant of Transformers that are able to generalize well.
* The describe it as a recurrent function evolving per-symbol hidden states inparallel, based at each step on the sequence of previous hidden states.
* The Universal Transformer does not recur over positions in the sequence, but over consecutive revisions of the vector representations of each position (i.e., over “depth”). It's not computationally affectedby the length of the input sequence.
* Apply a shared transition function to the representation at its position to further refine the representations.
* 

### Insight
* 

### Drawbacks and Possible Improvements
* 
