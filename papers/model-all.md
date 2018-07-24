# A Model To Learn Them All

#### Paper Summary

* Most multi-task learning in Speech Recognition, Machine Translation and Computer Vision involved tasks taken from *the same domain*. In the paper, they try to answer the question of whether it's possible for one **MultiModel** to learn multiple tasks from multiple domains.

* **Modality Networks** : For each domain, there's a modality net responsible for converting inputs from the external domain into a *unified representation* to be processed by the MultiModel. Modality networks are *domain specific* rather than *task-sepecific*. So, for instance, machine translation tasks, share the same modality net.

* Although the easy choice was to set a fixed size for the unified representation across all tasks, they chose to make it variable-sized.

    * ![alt text](https://adriancolyer.files.wordpress.com/2018/01/one-model-fig-2.jpeg?w=640)
