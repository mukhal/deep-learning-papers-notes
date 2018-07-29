
## Neural Architecture Search With Reinforcement Learning

### Paper Summary

* The main idea on which the paper is based is that the architecture and connectivity of neural networks can be described with a variable-length string. Thus it's possible to use an RNN to generate such string.

* At each step, the RNN produces the filter height, filter width, stride height, stride width and number of filters corresponding to successive layer.
![alt text](https://adriancolyer.files.wordpress.com/2017/05/neural-architecture-search-fig-4.jpeg?w=640)

* The generated architecture is then contructed and trained. The accuracy on the validation set is used as the reward on which the policy gradients are computed and the parameters of the policy network (RNN) are updated.

* To reduce the variance of the gradients, they use an exponential moving average of previous architectures accuracies as baseline function.

* To handle skip connections, they introduce a sigmoid operation between the hidden states of the anchor point of the current layer and the anchor point of the corresponding layer. This outputs the probabiltiy of having a skip connection between these two layers. For the nth layer, it is done for all n-1 layers 



