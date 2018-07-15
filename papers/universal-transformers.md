## [Universal Transformers](https://arxiv.org/abs/1807.03819)

* Transfomers are self-attentive models proposed originally [here](https://arxiv.org/abs/1706.03762) to address a significant shortcoming of RNNs, namely their inherently sequential computation which prevents parallelization across elements of the input sequence.
* Transfomers rely mainly on self-attenttion to compute a contextualized representation of input and output symbols.
* However, transformers don't generalize well to input lengths not seen during training.


### Notes

* Proposed a new variant of Transformers that are able to generalize well.
* The describe it as a recurrent function evolving per-symbol hidden states inparallel, based at each step on the sequence of previous hidden states.
* The Universal Transformer does not recur over positions in the sequence, but over consecutive revisions of the vector representations of each position (i.e., over “depth”). It's not computationally affectedby the length of the input sequence.
* Apply a shared transition function to the representation at its position to further refine the representations.
* Adaptive Computation Time (ACT) is a mechanism to accomodate appropriate processing time to each input sumbol depending on its requirment. It's intuitive that some input symbols are more ambigious and thus need more computation time. Here, ACT is used to halt the transition function at specific time and instead copy the representation to the next time step. This is actuakky  similar to assigning each symbol to an encoder of different depth deoending on the need of the symbol.


### Further discussion
