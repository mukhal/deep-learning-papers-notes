
# Fast Abstractive Summarization with Reinforce-Selected Sentence Rewriting

#### Paper Summary 

* Neural Abstractive summarization is slow in nature bacause decoding outputs one word at a time plus the fact that attention is required to consider all input words. In addition, abstractive models suffer from redundancy (repetitions).

* The authors propose a hybrid extractive-abstractive summarization architecture with policy-based RL to connect the two networks. They argue that this is how humans perform long documents summarization; they first select highlights (extraction), then they rewrite these highlights via compression or paraphrasong (abstraction).

* Incroporating extraction along with abstraction should improve the model speed and stability. This should remove *redundancy* since the model has already choosen a set of salient non-redundant sentences to abstract.

* **Extractor Agent** : Computes a hierarchical sentence repesentation using a CNN (word-level) followed by an LSTM (sentence-level). Then annother LSTM *Pointer Network* extracts sentences recurrently. To extract a sentence at time step t, the extractor performs a 2-hop attention mechanism: It first attends to hj’s to get a context vector et and then attends to hj’s again for the extraction probabilities

![alt text](https://user-images.githubusercontent.com/544269/42416552-df059792-82ac-11e8-89b4-529f3be1cea9.png)
