+++
title = "GTDLBench"
description = ""
+++

# GTDLBench

With its effective and wide real applications, deep learning attracts great attention nowadays. Many deep learning frameworks emerged to facilitate deep learning research, development and applications. However, few research has been conducted to effectively measure these frameworks. And it still remains a critical task on choosing the optimal framework for specific deep learning models and applications. GTDLBench aims at introducing a hybrid benchmark to systematically measure the performance of these deep learning frameworks as well as the performance of different hardware devices. The performance metrics derived from both deep learning and systems field are introduced to present an easy and holistic approach for deep learning benchmarking.


## Metrics

### End-to-end Benchmark
* Utility
  * Accuracy (Top-1, Top-5) (%)
* Cost
  * Training Time (s)
  * Testing Time (s)
* System
  * Throughput (MB/s)

### Micro Benchmark

* Latency (ms)

## Tutorials

* [Benchmarking on MNIST](/comparison/tutorials/benchmarking_on_mnist/)
* [Benchmarking on CIFAR-10](/comparison/tutorials/benchmarking_on_cifar10/) 
* [Benchmarking on CIFAR-100](/comparison/tutorials/benchmarking_on_cifar100/) 

## Deep Learning Frameworks

[Frameworks](/frameworks/)

* [Caffe](/frameworks/caffe)
* [MXNet](/frameworks/mxnet)
* [TensorFlow](/frameworks/tensorflow)
* [Theano](/frameworks/theano)
* [Torch](/frameworks/torch)


## Datasets

* [AT&T Faces](/datasets/att_face_dataset/) | [Download](https://drive.google.com/file/d/1ibW1KHYo_tE2ZIu0EfAmCR_p0Rros3M0/view?usp=sharing)
* [Caltech-101](/datasets/CALTECH101_datasets/) | Download
* [CIFAR-10](/datasets/CIFAR-10_datasets/) | [Download](https://drive.google.com/open?id=1n5oKcBgBI7_oEp9xroAIyJbHvVp0bZDe)
* [CIFAR-100](/datasets/CIFAR-100_datasets/) | [Download](https://drive.google.com/open?id=1N1u6jZacEgnT3t1aYEBd2y7Bnwb5FK-k)
* [MNIST](/datasets/MNIST_datasets/) | [Download](https://drive.google.com/file/d/11ZiNnV3YtpZ7d9afHZg0rtDRrmhha-1E/view?usp=sharing)

## Deep Learning Models

* [Default-on-MNIST](/models/mnist_comparison/)
* [Default-on-CIFAR-10](/models/cifar10_comparison/)


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
        <a href="https://ieeexplore.ieee.org/document/8765795" >
            A Comparative Measurement Study of Deep Learning as a Service Framework
        </a>
    </li>
    <li>
        <a href="https://ieeexplore.ieee.org/document/8621930" >
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

    @ARTICLE{GTDLBencharTSC,
        author={Y. {Wu} and L. {Liu} and C. {Pu} and W. {Cao} and S. {Sahin} and W. {Wei} and Q. {Zhang}}, 
        journal={IEEE Transactions on Services Computing}, 
        title={A Comparative Measurement Study of Deep Learning as a Service Framework}, 
        year={2019}, 
        volume={}, 
        number={}, 
        pages={1-1}, 
        keywords={Libraries;Parallel processing;Hardware;Training;Runtime;Deep learning;Task analysis;Deep Learning as a Service;Big Data;Deep Neural Networks;Accuracy}, 
        doi={10.1109/TSC.2019.2928551}, 
        ISSN={1939-1374}, 
        month={},
    }

    @INPROCEEDINGS{GTDLBenchBigData, 
        author={{Wu}, Yanzhao and and {Cao}, Wenqi and {Sahin}, Semih and {Liu}, Ling}, 
        booktitle={2018 IEEE 38th International Conference on Big Data}, 
        title="{Experimental Characterizations and Analysis of Deep Learning Frameworks}", 
        year={2018},
        month={December},
    }
