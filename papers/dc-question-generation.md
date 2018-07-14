## [Difficulty Controllable Question Generation for Reading Comprehension](https://arxiv.org/pdf/1807.03586.pdf)

### What they did

* They proposed both a new task (Difficulty contrallable Question Generation "Dico-QG") and a new dataset for that task
* They followed a two-step approach: firstly, estimate the possible difficulty of the question. Secondly, generate the question and employ the estimated difficulty in the generation process.
* Each word in the sentence is represented as a concatenation of its word embedding and an indicator embedding to indicate if the word belongs to the answer.
* Each difficulty level is assigned a trainable vector embedding that is used to partially initialize the decoder.
* used two reading comprehension systems (R-Net and BiDaf) to automatically label SQUAD question with respect to difficulty. If both answer it easily, it's easy if both can't answer it, then it's hard. Other questions are ommited. (I like that idea of automatic labeling using pre-trained systems)
* Decoder is based on pointer copy and attention
* 


### Insight
* 

### Drawbacks and Possible Improvements
