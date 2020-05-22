### Energy-based Models for Text



* The paper build on the works of improving text generators through discriminators (or classifiers)  trained to distinguish machine-generated text from natural text.

* The Discrimnator will be an energy function. It should assign high score (energy) to "artificial" sequences sampled from the generator, and low score (energy) to "real" sequences coming from human corpora.

* The training objective of the discriminator is :

<img src="https://i.imgur.com/pVpprcH.png">

To minimize the first term, the energy term of the human text <img src="https://render.githubusercontent.com/render/math?math== s_theta(x_+)"> must be very low. To
