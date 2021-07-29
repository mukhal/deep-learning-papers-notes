### REPRESENTATION LEARNING VIA INVARIANT CAUSAL MECHANISMS

* For contrastive learning: under assumptions on how the negative examples are sampled, minimizing the contrastive loss has been justified as maximizing a lower bound on the mutual information (MI) between representations (Poole et al., 2019)
* Others have argued it is more about the encoder architecture (Tschannen et al., 2019).
* There is a lack of theoretical analysis of contrastive representation learning methods.

* We do not observe causal variables, but raw data. Therefore, it is not possible to perform interventions. The authors use data augmentations to *simulate* possible interventions.

* The data generative process is represented by a causal graph of four variables: Input (X), Style (S), Content (C), and Targets Y_t. Only content is assumed to affect the targets C --> Y. While style and content affect the inputs S-->X, C-->Y.

* The goal is to learn a representation that matches each examples with its augmentations. However, another optimization is added in order to  make distribution of the target given the representation P(Y| f(X)) *invariant* under different augmentations.

* This is done by adding a **KL regularizer** term to the loss to minimize the distance between the probability distribution P(Y|f(X)) under different augmentations. This severs to add an invariance contraint to the learned representations.

* Such invariance constraint is proven to produce representations that are invariant of the style S of the input when using it in downstream tasks. 