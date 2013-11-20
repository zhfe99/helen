============
Introduction
============
    This page contains the Helen dataset used in the experiments of
    exemplar-based graph matching (EGM) [1] for facial Landmark
    detection. The original Helen dataset [2] adopts a highly detailed
    annotation. We re-labeled 348 images with the same 29 landmarks as
    the LFPW dataset [3]. In addition, we provide MATLAB interface code
    for loading and visualizing the facial landmarks on images.


============
Installation
============
    1. unzip "helen.zip" to your folder;
    2. Run "demoHelen".


============
Instructions
============
    The package of "helen.zip" contains the following files and folders:

    ./data: This folder contains the images and labels of the Helen dataset.

    ./lib: This folder contains some library functions for visualizing facial landmark on images

    ./demoHelen.m: An interface demo for visualizing image and facial landmarks.


==========
References
==========
    [1] F. Zhou and F. De la Torre, "Exemplar-based Graph Matching for
    Robust Facial Landmark Localization," in IEEE International Conference
    on Computer Vision (ICCV), 2013

    [2] V. Le, J. Brandt, L. Bourdev, Z. Lin and T. Huang, "Interactive
    Facial Feature Localization", in European Conference Computer Vision
    (ECCV), 2012

    [3] P. N. Belhumeur, D. W. Jacobs, D. J. Kriegman and N. Kumar,
    "Localizing Parts of Faces Using a Consensus of Exemplars", in IEEE
    Conference on Computer Vision and Pattern Recognition (CVPR), 2011


=========
Copyright
=========
    This software is free for use in research projects. If you
    publish results obtained using this software, please use this
    citation.

    @inproceedings{ZhouBL13,
        author    = {F. Zhou, J. Brandt and Z. Lin},
        title     = {Exemplar-based Graph Matching for Robust Facial Landmark Localization},
        booktitle = {IEEE International Conference on Computer Vision (ICCV)},
        year      = {2013},
        }

    If you have any question, please feel free to contact Feng Zhou (zhfe99@gmail.com).
