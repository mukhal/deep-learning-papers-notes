### Notes

* Previous models for sentence matching included siamese architectures where two networks that share the same parameters process each sentence and then a decision is made based on the two representations output by the network. Processing each sentence separately weakens the model as no matching is done between the two sentences. Other models proposed word-by-word matching but ignored phrase-by-phrase or phrase-by-sentence matching. In addition, matching was done in one direction only i.e matching Q against P only.
* The proposed approach matches P and Q in two directions (Q -> P and P -> Q) with multiple perspectives.
* Their model consists of 5 layers : 

    * Matching layer is the most significant where the last hidden representation of sentence Q is matched agains all tokens hidden representations of P and vice versa.
