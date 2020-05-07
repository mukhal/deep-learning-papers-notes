### Calibration Of Pretrained Transformers
* **Posterior Calibaration?** :
    Calibarted models are models whose confidence in their prediction is the same as the empirical likelihoods of these predictions. For instance, a binary classification model that receives 100 examples, and assigns them to class A with probability 0.7, should exactly correctly classify 70 of these 100 examples.

    In other words, its confidence (probability) corresponds to its accuracy.


* Do you want to know if a model is calibrated or not? Take the difference between its confidence and its accuracy. This is ususally done by grouping predictions into bins, computing a weighted average of the difference between predictions and accuracy within each bin. This is known as the Expected calibration Error (ECE). The lower the better.



* **Observations**:
    * Inverse correlation between calibration and complexity (in non-pretrained models)
    * Pretrained models are ususally more calibrated
    * RoBERTa is better than BERT is almost all calibration aspects.

* Now that you have a model. How can you improve its ECE?
    * Temperature Scaling improves in-domain ECE
    * Label Smoothing : Improves ECE in out-of-domain ECE, but worsens it in-domain.
    * Temperature scaling hurts label smoothing
    * There's a bit of variability in the results across datasets.