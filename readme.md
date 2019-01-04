# GTDLBench

## Abstract

With its effective and wide real applications, deep learning attracts great attention nowadays. Many deep learning frameworks emerged to facilitate deep learning research, development and applications. However, few research has been conducted to effectively measure these frameworks. And it still remains a critical task on choosing the optimal framework for specific deep learning models and applications. GTDLBench aims at introducing a hybrid benchmark to systematically measure the performance of these deep learning frameworks as well as the potential performance of different hardware devices. The performance metrics derived from both deep learning and systems field are introduced to present an easy and holistic approach for deep learning benchmarking.


## Metrics

* Training Time (s)
* Testing Time (s)
* Accuracy (%)

## Tutorials

* [Benchmarking on MNIST](tutorials/benchmarking_on_mnist.md)
* [Benchmarking on CIFAR-10](tutorials/benchmarking_on_cifar10.md) 

## Frameworks

[Frameworks](frameworks/frameworks.md)

* [Caffe](frameworks/caffe.md) Download
* [MXNet](frameworks/mxnet.md) Download
* [TensorFlow](frameworks/tensorflow.md) Download
* [Theano](frameworks/theano.md) Download 
* [Torch](frameworks/torch.md) Download


## Datasets

* [AT&T Faces](datasets/att_face_dataset.md) | [Download](https://drive.google.com/open?id=1ibW1KHYo_tE2ZIu0EfAmCR_p0Rros3M0)
* [Caltech-101](datasets/CALTECH101_datasets.md) | [Download]()
* [CIFAR-10](datasets/CIFAR-10_datasets.md) | [Download](https://drive.google.com/open?id=1n5oKcBgBI7_oEp9xroAIyJbHvVp0bZDe)
* [CIFAR-100](datasets/CIFAR-100_datasets.md) | [Download](https://drive.google.com/open?id=1N1u6jZacEgnT3t1aYEBd2y7Bnwb5FK-k)
* [MNIST](datasets/MNIST_datasets.md) | [Download](https://drive.google.com/file/d/11ZiNnV3YtpZ7d9afHZg0rtDRrmhha-1E/view?usp=sharing)

## Models

* [Default-on-MNIST](models/mnist)
* [Default-on-CIFAR-10](models/cifar10)


Please cite the following papers:

<section class="attachments">
	<label>
		<span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span>
		Papers under GTDLBench
	</label>
    <li>
        <a href="https://ieeexplore.ieee.org/document/8416388" >
            Benchmarking Deep Learning Frameworks: Design Considerations, Metrics and Beyond
        </a>
    </li>
    <li>
        <a href="https://arxiv.org/abs/1810.12210" >
            A Comparative Measurement Study of Deep Learning as a Service Framework
        </a>
    </li>
    <li>
        <a href="" >
            Experimental Characterizations and Analysis of Deep Learning Frameworks
        </a>
    </li>
</section>


    @INPROCEEDINGS{GTDLBenchICDCS, 
        author={{Liu}, Ling and {Wu}, Yanzhao and {Wei}, Wenqi and {Cao}, Wenqi and {Sahin}, Semih and {Zhang}, Qi}, 
        booktitle={2018 IEEE 38th International Conference on Distributed Computing Systems (ICDCS)}, 
        title="{Benchmarking Deep Learning Frameworks: Design Considerations, Metrics and Beyond}",
        year={2018},
        pages={1258-1269}, 
        doi={10.1109/ICDCS.2018.00125}, 
        ISSN={2575-8411}, 
        month={July},
    }

    @ARTICLE{GTDLBencharXiv,
        author = {{Wu}, Yanzhao and {Liu}, Ling and {Pu}, Calton and {Cao}, Wenqi and
        {Sahin}, Semih and {Wei}, Wenqi and {Zhang}, Qi},
        title = "{A Comparative Measurement Study of Deep Learning as a Service Framework}",
        journal = {arXiv e-prints},
        keywords = {Computer Science - Performance, Computer Science - Machine Learning},
        year = 2018,
        month = Oct,
        eid = {arXiv:1810.12210},
        pages = {arXiv:1810.12210},
        archivePrefix = {arXiv},
        eprint = {1810.12210},
        primaryClass = {cs.PF},
        adsurl = {https://ui.adsabs.harvard.edu/\#abs/2018arXiv181012210W},
        adsnote = {Provided by the SAO/NASA Astrophysics Data System}
    }

    @INPROCEEDINGS{GTDLBenchBigData, 
        author={{Wu}, Yanzhao and and {Cao}, Wenqi and {Sahin}, Semih and {Liu}, Ling}, 
        booktitle={2018 IEEE 38th International Conference on Big Data}, 
        title="{Experimental Characterizations and Analysis of Deep Learning Frameworks}", 
        year={2018},
        month={December},
    }
