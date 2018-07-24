# A Model To Learn Them All

#### Paper Summary

* Most multi-task learning in Speech Recognition, Machine Translation and Computer Vision involved tasks taken from *the same domain*. In the paper, they try to answer the question of whether it's possible for one **MultiModel** to learn multiple tasks from multiple domains.

* **Modality Networks** : For each domain, there's a modality net responsible for converting inputs from the external domain into a *unified representation* to be processed by the MultiModel. Modality networks are *domain specific* rather than *task-sepecific*. So, for instance, machine translation tasks, share the same modality net.

* Although the easy choice was to set a fixed size for the unified representation across all tasks, they chose to make it variable-sized.
* **Architecture** : 
    * The 4 main components are Modality Nets, Encoder, I/O mixer and Autoregressive Decoder. 
    * The encoder and decoder are based on 3 key computational blocks : **Convolutions**, **Attention Layers** and **Sparsely-gated mixture-of-experts**  
    * **Convolutions** : They use depth-wise separable convolutions. (Still not clear on them) with ReLU activations and *Layer Normalization.* They use 4 convolutional blocks with residual connections.
    *  **Attention** : Takes a source and a target tensors then applies Multi-head dot product self-attention on the target tensor to produce Q, and point-wise convolutions on the input source to produce K, V. Then another Multi-head dot product attention is applied on Q, K and V to produce the attended source.
    *

* ![alt text](https://adriancolyer.files.wordpress.com/2018/01/one-model-fig-2.jpeg?w=640)
