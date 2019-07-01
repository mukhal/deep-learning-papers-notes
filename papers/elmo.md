## Deep Contextualized Word Representations

#### Paper Summary
* The paper introduces word vectors that are function of the whole input sentence.
* In addition, their approach makes use of sub-word units by using character convolutions.
* Context-dependent representations is not a new idea.
* They employ a bidirectional language model (bi-LM) trained on ~30M sentences for extracting the word vectors.
* A biLM is simply a biLSTM network trained on a large corpus to predict the next word (or the previous when working with the reverse direction)
* To further compute a tesk-specific word vector, a weighted sum of the biLM layer representations is computed.
* To compute a task-sepcific representations, you run the biLM model and record a representation for each word. Then, the end task model learns a linear combination of these representations. 
* They used two layer bi-LSTM for the Bidirectional Language Model with each layer size = 4096. They also employed *residual connections* between the first and the second layers of the LSTM network

  

#### Notes

* The inclusion of the word context in the computation of the word vector will certainly produce more context-aware word representations.
* The backward direction in language models introduce more power to the model.
* The idea of further fine-tuning the word representation to the specific task by introducing task specific weights  that weight each layer representation can be extended to any type of multiple-layer word vectors.
* Does the power of the vectors increase proportionally to the depth of the language model?
* The language model was trained to predict the next word. However, these predictions (the outputs of the language model) are not used to extract the word vectors at all.
