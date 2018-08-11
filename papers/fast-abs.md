
# Fast Abstractive Summarization with Reinforce-Selected Sentence Rewriting

#### Paper Summary 

* Neural Abstractive summarization is slow in nature bacause decoding outputs one word at a time plus the fact that attention is required to consider all input words. In addition, abstractive models suffer from redundancy (repetitions).

* The authors propose a hybrid extractive-abstractive summarization architecture with policy-based RL to connect the two networks. They argue that this is how humans perform long documents summarization; they first select highlights (extraction), then they rewrite these highlights via compression or paraphrasong (abstraction).

*
