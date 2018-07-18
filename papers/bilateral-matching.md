### Notes

* Previous models for sentence matching included siamese architectures where two networks that share the same parameters process each sentence and then a decision is made based on the two representations output by the network. Processing each sentence separately weakens the model as no matching is done between the two sentences. Other models proposed word-by-word matching but ignored phrase-by-phrase or phrase-by-sentence matching. In addition, matching was done in one direction only i.e matching Q against P only.
* The proposed approach matches P and Q in two directions (Q -> P and P -> Q) with multiple perspectives.
* Their model consists of 5 layers : 

    * **Embeddings layer** : Maps words to vectors. Initialized with GloVe vectors.
    * **Context Representation layer** : a Bi-LSTM to encode contextual embeddings of each symbol in P and Q.
    * **Matching layer** is the most significant layer. Matches each time-step of Q against all time-steps of P (last hidden         representation) of P and each time-step P against all time-steps of Q.
    * **Aggregation Layer** Aggregates the two sequences of matching vectors output from the matching layer into one fixed-length matching vector.
    * **Prediction layer** outputs the prediction P(y|Q,P) through a two layer feed-forward network on the fixed length natching vector followed by a softmax layer.
   
* The main contribution of the paper is the **Mutli-Perspective Matching Operation** :
    * m = f_m (v1, v2, W) where W ls l x d and l is the number of matching perspectives. m_k = cosine(W_k o v1, W_k o v2). This is matching v1 and v2 according to the kth perspective.
    
   * Having defined  f_m, they propose 4 different matching strategies : Full, max-pooling, attentive and max attentive-matchings. These stratiegies are all used together and their resuting vectors are conatenated :
   
   
 
   
