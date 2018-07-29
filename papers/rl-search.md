
## Paper Summary

* The main idea on which the paper is based is that the architecture and connectivity of neural networks can be described with a variable-length string. Thus it's possible to use an RNN to generate such string.

* At each step, the RNN produces the filter height, filter width, stride height, stride width and number of filters corresponding to successive layer.
![alt text](https://adriancolyer.files.wordpress.com/2017/05/neural-architecture-search-fig-4.jpeg?w=640)

* The generated architecture then contructed and trained. The accuracy on the validation set is used as the reward on which the policy gradients are computed and the parameters of the policy network (RNN) are updated.

