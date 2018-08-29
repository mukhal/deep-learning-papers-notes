
## Improving Abstraction in Text Summarization 

#### Key Points :
* Summarization is the processing of compressing a long sequence of text into a more compact form.
* The paper builds on the deep reinforced model proposed by (Paulus et. al, 2017).
* Their main contribution is a two-fold :
    * Introducing a language model into the decoding process to improve readability and conciseness.
    * Introducing a new reward whose aim is to encourage the generation of novel n-grams that are not present in the source document.
* **Model** :
    * The model follows an encoder-decoder architecture. 
    * The decoder employs two types of attention. : *Temporal attention* and *Intra-attention*.
    * **Tempora Attention** : An attention that penalizes input tokens that previously had high attention scores (to prevent the model from repeating phrases)
    * **Intra attention** : gives the decoder more power as it attents over its own state h.
   * The model also uses a pointer network to copy words from the source when needed.
   
* **Language Model Fusion** : A learned gating mechanism is used for filtering the last hidden layer of a pre-trained language model. The gating output is then concatenated to the decoder state and attentions and then used to produce output words distribution should the model decide to generate rather than copy a word.

* ** 
    
