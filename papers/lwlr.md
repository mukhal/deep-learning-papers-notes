
### Layer-wise Relevance Propagation for Neural Networks with Local Renormalization Layers


* Explainable ML is a bit of a new topic to me, but it looks interesting! They are mainly useful in safety-critical domains, where practitioners must know tha basis upon which the network made its decision.

* **Q**: What is Layer-wise relevance propagation?
  **A**: An approach that enables us to assign relevancy scores to pixels of an image, i.e. Which of those pixels has contributed most to the classification decision of the network?
  
 * **Q**: Where oes the term "propagation" come from?
    **A**: I am glad you asked that. The idea is very similar to backpropagation. In BP, we propagate the gradients throught the network up to the first layer. In here, we propagate the relevancy scores from the output layer (typically softmax) up to the input pixels to identify which of them have the highest scores.

Propagation formula: 

<img src="https://miro.medium.com/max/822/1*yAGiGS8nHfXxrnXP_u_P8Q.png">
 
 
* **Q**: What does this paper contribute?
  **A**: While the idea of layer-wise relevance propagation was proposed before, the previous apprach was constrained to generalized linear mappings. This paper extends it to product-type(what is that??) non-linearities.
  
  
  
