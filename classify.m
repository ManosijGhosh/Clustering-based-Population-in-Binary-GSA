function [per]=classify(train,trainLabel,test,testLabel,agent,classifierType,paramValue)
    % function to call the correct classifier depending on the type
    switch classifierType
        case 'mlp'
            [per]=mlpClassifier(train,trainLabel,test,testLabel,agent,paramValue);
        case 'svm'
            [per]=svmClassifier(train,trainLabel,test,testLabel,agent,paramValue);
        case 'knn'
            [per]=knnClassifier(train,trainLabel,test,testLabel,agent,paramValue);       
        otherwise
            warning('classifier type not present!!!!');
    end
end
