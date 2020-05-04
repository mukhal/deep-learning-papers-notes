
### Layer-wise Relevance Propagation for Deep Neural Network Architectures


* Explainable ML is a bit of a new topic to me, but it looks interesting! It's mainly useful in safety-critical domains, where practitioners must know tha basis upon which the network made its decision.

* **Q**: What is Layer-wise relevance propagation?
  **A**: An approach that enables us to assign relevancy scores to pixels of an image, i.e. Which of those pixels has contributed most to the classification decision of the network?
  
 * **Q**: Where oes the term "propagation" come from?
    **A**: I am glad you asked that. The idea is very similar to backpropagation. In BP, we propagate the gradients throught the network up to the first layer. In here, we propagate the relevancy scores from the output layer (typically softmax) up to the input pixels to identify which of them have the highest scores.

Propagation formula: 

<img src="https://miro.medium.com/max/822/1*yAGiGS8nHfXxrnXP_u_P8Q.png">
 Where neuron j is in the layer before neuron k. Note that the contribution of R_k to R_j is normalized by the contribution of R_k to all the neurons in the preceding layer of R_j

  
  
  
