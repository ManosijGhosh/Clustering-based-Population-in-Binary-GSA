function [fitnessVal] = similarity(sample,clusterCenter,classifierType,paramValue,fold)
    
    % similarity calculation according to Eqn. 9
    epsilon = 0.001; 
    [~,sampleClassification] = crossValidate(sample,classifierType,paramValue,fold);
    [~,clusterCenterClassification] = crossValidate(clusterCenter,classifierType,paramValue,fold);
    classificationDiff = abs(sampleClassification - clusterCenterClassification) + epsilon;       
    hamm = hammingDist(sample, clusterCenter);       
    fitnessVal = (1 / hamm) + (1 / classificationDiff);
    
end
