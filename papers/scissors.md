## Do You Have the Right Scissors? Tailoring Pre-trained Language Models via Monte-Carlo Methods



* When fine-tuning Pre-trained Language models for for generation tasks on *small* datasets, we run into the the risks of either "over-estimation" of "under-estimation". In both cases, the probability according to the model is different (higher or lower) than the probability according to the true data distribution.

* Why does this happen? Since MLE minimizes the Kullback-Leibler divergence between model and true distributions, it tries to cover the data region as much as it can but in the process, assigns probability mass to non-data regions (over-generalization).

  
  ![](https://imgur.com/h5gQPZF)

* The paper proposes a 3-component approach to fix this:
  1. **Ratio estimator** that given a sentence x, estimates P_model(x)/P_true(x). They use a CNN trained to discriminate between points x from the data, and x coming from the model. They employ two additional techniques for that: Dual estimator (to be able to approximate this ratio, for incomplete samples i.e you do not have to wait until you have generated the whole sentence. Otherwise, this would be very inefficient.). The other technique is inspired from boosting, where you build your estimator in a hierarhcical way using the previous one.

  
  2. **P_tailor probability** The ratio estimator you have computed previously can be used to compute the fixed tailored probability. The only thing left is to *sample* from this tailored probability!
  
  
  3. **Early Rejection Sampling**: Here comes the sampling part. We sample from P_model, then we want to filter out the samples that have a bad a high ratio of P_model/P_data (overestimation).  We choose a rejection ratio = 1 - (1/ max(ratio(x), 1)). Thus, samples with ratio > 1 are more likely to be rejected. However, this procedure is very **INEFFICIENT**; we have to wait until the end to know if you'll keep or reject the current sample. Sequential Monte Carlo would be of help here, since it can be employed during autoregressive sampling  They propose a modification of Sequential Monte Carlo, where at each step you weight each sample by ratio'(x1:i-1)/ratio'(x1:i), meaning you are more likely to choose samples that are moving towards lower ratio. However, one problem with this is that you're more likely to keep only a subset of the prefixes that have high ratios. This would translate into much less diversity when using Sequential MC. They propose a more adhoc way that they call **Early Rejectio Sampling**. The idea os to kill branches that have a ratio more than a random fraction 1/r. This would serve to remove the correlation between samples that SMC had (because samples are likely to share the same prefix).
  
  

