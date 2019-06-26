## [Transformer-XL: Attentive Language Models Beyond a Fixed-Length Context](https://arxiv.org/pdf/1901.02860.pdf)


## Notes
* One major problem with the [Transformer](https://arxiv.org/abs/1706.03762) architecture is that they operate on **Fixed-length** context, that is the input sequence length (typically 512 tokens) is always fixed.
* This paper proposes two novel ideas to remedy such problem:

1. **Recurrence Mechanism** : 
  During Language modeling in LSTM networks, the hidden state from the previous sequence is kept and reused during processing the next sequence. This is what is known as *stateful* rnn. The recurrent mechanism proposed is as follows: the self-attention result of the n-1 th layer in the previous text segment is used when computing the self-attention result in the n-th during processing the current text segment. 

<a href="https://imgbb.com/"><img src="https://i.ibb.co/xH2XbJL/image.png" alt="image" border="0"></a>

As shown above: The n-1 th hidden state from the previous input segment is concatenated to the n-1th hidden state from the previous. This concatenation is used to compute the Keys and Values of the current self-attention operation while the query is left untouched. Note that `SG` is used to indicate STOP GRADIENT. This means that while we use the value of the previous input segment, we don't backpropagate gradient through it which makes sense since propagating through previous input segments would be infeasable.

<a href="https://ibb.co/KKTrc1G"><img src="https://i.ibb.co/NTcyg43/image.png" alt="image" border="0"></a>

2. **Relative Positional Encoding**
