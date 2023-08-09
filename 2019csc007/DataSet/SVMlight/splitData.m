function [train,test] = splitData(data)
    [m,n] = size(data);
    
    %Line 5 & 6 can be replaced as data = shuffleData(data)
    indices = randperm(m);
    data = data(indices,:);
    train = [];
    test = [];
    
    nTrain = round(m*0.7);
    train = data(1:nTrain,:);
    test = data(nTrain+1,:);