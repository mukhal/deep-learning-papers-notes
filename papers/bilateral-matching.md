### Notes

* Previous models for sentence matching included siamese architectures where two networks that share the same parameters process each sentence and then a decision is made based on the two representations output by the network. Processing each sentence separately weakens the model as no matching is done between the two sentences. Other models proposed word-by-word matching but ignored phrase-by-phrase or phrase-by-sentence matching. In addition, matching was done in one direction only i.e matching Q against P only.
* The proposed approach matches P and Q in two directions (Q -> P and P -> Q) with multiple perspectives.
* Their model consists of 5 layers : 

    * **Embeddings layer** : Maps words to vectors. Initialized with GloVe vectors.
    * **Context Representation layer** : a Bi-LSTM to encode contextual embeddings of each symbol in P and Q.
    * **Matching layer** is the most significant layer. Matches each time-step of Q against all time-steps of P (last hidden         representation) of P and each time-step P against all time-steps of Q.
    * **Aggregation Layer** Aggregates the two sequences of matching vectors output from the matching layer into one fixed-length matching vector.
    * **Prediction layer** outputs the prediction P(y|Q,P) through a two layer feed-forward network on the fixed length natching vector followed by a softmax layer.
   
* The main contribution of the paper is the mutli perspective matching operation :
    * m= f_m(v1, v2, W) where W ls lxd and l is the number of matching perspectives.