# MATLAB code for CPBGSA: Clustering Population based Binary Gravitational Search Algorithm

Code to perform feature selection.

### Paper Reference - Guha, R., Ghosh, M., Chakrabarti, A., Sarkar, R., & Mirjalili, S. (2020). Introducing clustering based population in Binary Gravitational Search Algorithm for Feature Selection. Applied Soft Computing, 106341.

## Parameters

The following parameters must be prpvided as input to the function main.m file for running the code
* datasetName = name of the input dataset (divided into train and test samples)
* numAgents = initial count of search agents (adjusted to 40% as input to BGSA depending on the cluster percentage)
* numIteration = maximum number of iterations
* numRuns = number of times the method is applied over the same dataset
* classifierType = classifier to be used for geenrating accuracy (Here 3 options - 'knn'/'mlp'/'svm') 
* paramValue = parameter input for classifier (knn - number of neighbors, mlp - no. of hidden layers, svm - kernel type)


## Running the code
* Set all the required parameters
* run file _main.m_
* Ex - main('BreastCancer',50,30,5,'knn',5)

Link for algorithm details: [Paper](https://www.sciencedirect.com/science/article/pii/S1568494620302817?casa_token=wgPy0aHcqowAAAAA:GVjs0D_YFci78e9czz88fSstN5s1Jmhnr3fq4XNLVkqY3hgdPRm-8_Fm8fkGl4qPn0KDrMg_tA)

## Abstract:

Feature Selection (FS) is an important aspect of knowledge extraction as it helps to reduce dimensionality of data. Among the numerous FS algorithms proposed over the years, Gravitational Search Algorithm (GSA) is a popular one which has been applied to various domains. However, GSA suffers from the problem of pre-mature convergence which affects exploration leading to performance degradation. To aid exploration, in the present work, we use a clustering technique in order to make the initial population distributed over the entire feature space and to increase the inclusion of features which are more promising. The proposed method is named Clustering based Population in Binary GSA (CPBGSA). To assess the performance of our proposed model, 20 standard UCI datasets are used, and the results are compared with some contemporary methods. It is observed that CPBGSA outperforms other methods in 12 out of 20 cases in terms of average classification accuracy. 
