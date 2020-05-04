### Fine-Tuning Language Models from Human Preferences

<img src="https://d3i71xaburhd42.cloudfront.net/85172f97aedb9cc10358e6da31e4adc0e0ba71ae/2-Figure1-1.png">



* Considering any pretrained language model such as GPT2, the typical fine-tuning scheme is usually done with a Maximum Likelihood Objective.

* This paper aims at finetuning it using an RL-based objective. We have a reward the is given to any generated output. We want to finetune our model such that its generation are "good" w.r.t to this reward.

* In the paper, the reward comes from another model (usually the same LM before fineutning). The reward models itself is trained using human labels.

* A KL-divergence term is added to the Reward(x,y) to make sure the finetuned model does not deviate largerly from the original LM (before fine-tuning)

* Finetuning is done using Proximal Policy Optimization [PPO](ppo.md) on the KL-augmented Reward.
