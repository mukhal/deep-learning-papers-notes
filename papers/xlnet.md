
## [XLNet: Generalized Autoregressive Pretraining for Language Understanding](https://arxiv.org/pdf/1906.08237.pdf)

Notes:
* BERT achieved state-of-the-art performance on many NLP tasks, however it suffers from two main problems :

1. The Masked Language Modeling objective used to train BERT suffers from **discrepancy** between pretraining and finetuning where, in finetuning, the [MASK] token is absent from real data.

2. BERT predicts that the 15% masked tokens assuming they are independed of each other given the unmasked tokens. This hinders it from modeling the join probability using the product rule as in Auto Regressive language modeling.


* The **MAIN** contribution of this paper is using Auto Regressive Language Modeling while alleviating its main flaw, that is : *its inability to model bidirectional contexts*. This was done by pretraining an Auto Regressive Language model that maximizes the expected log likelihood of a sequence with respect to **All its possible permutations**. 

* **Example** : Given a sequence [a,b,c]:
  * We have 3! possible factorization orders including, for instance, : [a->b>c], [b->c->a], [c->a>b]. The idea is that we train the model the maximize the expected log likelihood of all possible factorization orders. That is, we train it to maximize P(x_t=c| x_<t =[a,b]), and P(x_t=a| x_<t=[b,c])... and so forth.
