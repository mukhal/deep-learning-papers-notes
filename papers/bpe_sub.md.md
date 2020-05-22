### Byte pair encoding is suboptimal for Language Model Pretraining

* The paper compares BPE to Unigram LM tokenization approaches, in terms of performance of downstream tasks when fine-tuning Langauge Models

* How does BPE work?
	BPE works in a bottom-up fashion where it starts with an empty vocabulary, adds the most common 2 consecutive bytes to the vocab, and proceeds until the required vocabulary size is reached.

* How does Unigram LM tokenization work?

	Well, first of all what is Unigram LM? It's the simplest form of Language models. It's a language model that, when scoring a sequence of tokens, considers each token separately. It's based on the assumption that each token is selected independently of the next and previous tokens (a far-fetched assumption, of course).

<img "unigarm_lm_equation" >
	
