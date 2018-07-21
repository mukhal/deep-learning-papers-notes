## Deep Contextualized Word Representations

#### Paper Summary
* The paper introduces word vectors that are function of the whole input sentence.
* Their approach make use of subword units by using character convolutions.
* Context-dependent representations is not a new idea.
* They employ a bidirectional language model (biLM) trained on ~30M sentences for extracting the word vectors.
* A biLM is simply a biLSTM network trained on a large corpus to predict the next word (or the previous when working with the reverse direction)
* To further compute a tesk-specific word vector, a weighted sum of the biLM layer representatiosn is computed.
* To compute a task-sepcific representations, you run the biLM model and record a representation for each word. They the end task model learns a combination of these representations. 
* The biLM model employed *residual connections* between the first and the second layers of the LSTM network.
