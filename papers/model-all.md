# A Model To Learn Them All

### Paper Summary

* Most multi-task learning in Speech Recognition, Machine Translation and Computer Vision involved tasks taken from *the same domain*. In the paper, they try to answer the question of whether it's possible for one **MultiModel** to learn multiple tasks from multiple domains.

* **Modality Networks** : For each domain, there's a modality net responsible for converting inputs from the external domain into a *unified representation* to be processed by the MultiModel. Modality networks are *domain specific* rather than *task-sepecific*. So, for instance, machine translation tasks, share the same modality net. They use 4 such nets for text, image, audio and categorical data.

* Although the easy choice was to set a fixed size for the unified representation across all tasks, they chose to make it variable-sized.

![alt text](https://adriancolyer.files.wordpress.com/2018/01/one-model-fig-2.jpeg?w=640)
* **Architecture** : 
    * The 4 main components are Modality Nets, Encoder, I/O mixer and Autoregressive Decoder. 
    * The encoder and decoder are based on 3 key computational blocks : **Convolutions**, **Attention Layers** and **Sparsely-gated mixture-of-experts**  
    * **Convolutions** : They use depth-wise separable convolutions. (Still not clear on them) with ReLU activations and *Layer Normalization.* They use 4 convolutional blocks with residual connections.
    *  **Attention** : Takes a source and a target tensors then applies Multi-head dot product self-attention on the target tensor to produce Q, and point-wise convolutions on the input source to produce K, V. Then another Multi-head dot product attention is applied on Q, K and V to produce the attended source. They use *timing signals* which are somehome similar to positional encodings.
    * **Mixture of Experts** : a collection of small feed-forward networks with a gating network that selects a combination of these networks to process the input.
    
* To allow the decoder to produce outputs for different tasks even with the same modality, they would start decoding with a command-token, such as To-English or To-Parse-Tree. We learn an embedding vector corresponding to each of the tokens during training. 

* **Results** : The model performs close to the state-of-the-art on the 8 tasks. 
    * Training the model jointly on the 8 problems results in improvement over training the task separately on some tasks especially the ones with less data such as parsing.
