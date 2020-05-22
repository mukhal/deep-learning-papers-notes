### Energy-based Models for Text



* The paper build on the works of improving text generators through discriminators (or classifiers)  trained to distinguish machine-generated text from natural text.

* The Discrimnator will be an energy function. It should assign high score (energy) to "artificial" sequences sampled from the generator, and low score (energy) to "real" sequences coming from human corpora.

* The training objective of the discriminator is :

<img src="https://i.imgur.com/pVpprcH.png">

To minimize the first term, the energy function of the human text <img src="https://render.githubusercontent.com/render/math?math=s_{\theta}(x_{+})"> must be very low. To minimize the second term, the energy function of the machine-generated text <img src="https://render.githubusercontent.com/render/math?math=s_{\theta}(x_{-})"> should be very high. In principle, we are pull down our energy function in true (positive) samples and pulling it up in artificial (negative) ones.



* **Generators**: For generators they experiment with different architectures including pretrained GPT2 with small, medium, large and huge flavors, and vanilla transformers and Convolutional Decoders.

* **Dscriminators**: They experiment with simple to complex archtectures including linear, BiLSTM and Transformer. Note that in all cases the hidden states are projected into a single scalar value (the energy function).


* **Leveraging Discriminators to improve Text Generation**

  * To train the energy model using the equation above, we use positives that come from the training data of the generator. However, the negatives are harder to get. You need to obtain good negatives that are somehow similar to the real data, yet they are not real. This process is called "Mining Negatives". But an important question is "Why search for negatives, when you can simply use the pretrained LM as your negatives generator?" This is what is done.
  
  * 
  
  

