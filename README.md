## Visual Neuroscience: Analyzing Neural Response Properties

This repository contains the work done as part of a project to analyze the response of neurons in a given region of the brain to visual stimulation. First, ImageJ was used to process a raw TIF file containing a time-lapse of neurons firing in response to a diffraction grating presented at various different orientations to the subject. The mean fluorescence values of neurons over this time period were obtained here.

Next, MATLAB was used to determine which orientations of the grating each neuron was most responsive to. This was done by quantify the response of the cell to each orientation by constructing an orientation tuning curve, using a baseline fluoresence to define ON and OFF periods.

Finally, this curve was used to determine the preferred orientation as well as the orientation selectivity index of each neuron (the degree to which a neuron is selective in its response to differing orientations of the image). The resulting data is presented in the form of the final population map, which demonstrates the relationship between orientation tuning and location of the neuron in the brain.