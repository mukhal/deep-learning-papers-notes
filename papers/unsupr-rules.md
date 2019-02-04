## [Learning Unsupervised Learning Rules](https://arxiv.org/abs/1804.00222)

### Brief

* Unsupervised learning does not define an explicit objective, making it imporssible to frame in the context of a standard optimization problem.
* The authors propose to apply meta-training to learn a meta-objective that maximizes the usefulness of the representations generated from unlabeled data.
* Meta parameters are trained by performing SGD on the sum of meta-objective over the course of the inner learning loop.

* **Base Model** Multi-layer perceptron (MLP) with ReLU non-linearity
* **Updated Rule**: An updated network is assigned to each neuron in the base model such that the update of neuron i in layer l is output by the network. All update networks share the same parameters theta. The inputs to the update network consist of unit pre- and post-activations, and backwards propagated error signal.
* **Meta-objective** : The outer loop consists fitting a linear regression to labeled examples on one minibatch the evaluating the classification performance on another minibatch. They use the cosine distance between the  meta-objective loss is the cosine distance between the true one-hot encoded label and the predicted label. *This metaobjective is use only during meta-training (Outer loop) and not used when applying the learned update rule (inner loop).*
