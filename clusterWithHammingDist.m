function [index, clusterCenters, sumd] = clusterWithHammingDist(population,minFeaturePercentage,maxFeaturePercentage,numClusters,classifierType,paramValue,fold)

    % function to cluster the population into numClusters number of clusters
    rng('shuffle');
    numAgents = size(population, 1);

    % Create a random set of initial cluster centers    
    clusterCenters = dataCreate(numClusters, size(population,2), minFeaturePercentage, maxFeaturePercentage);
    index = zeros(numAgents, 1);
    sumd = zeros(numClusters, 1);

    for sampleIndex = 1:numAgents
       sample = population(sampleIndex, :);
       funcVal = -1.0; 
       clusterAssigned = 1; 

       % Calculate the similarity of the sample with each cluster center.
       % Assign the sample to the cluster center to which it is most similar.
       for clusterIndex = 1:numClusters
           fit = similarity(sample, clusterCenters(clusterIndex,:), classifierType, paramValue, fold);
           if (fit > funcVal)
              funcVal = fit;
              clusterAssigned = clusterIndex;
           end
       end
       
       index(sampleIndex) = clusterAssigned;
       sumd(clusterAssigned, 1) = sumd(clusterAssigned, 1) + (1 / funcVal);
    end    
end
