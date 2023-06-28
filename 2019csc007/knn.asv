function rate = knn(train,test)
    m = size(traindata,1);
    n = size(testdata,1);
    predict =[];
    
    K = 3;
    
    for test = 1:n %for each testing data
        for train = 1:m %for each training data
            Euclidist(train) = norm(testdata(test,1:end-1) - traindata(train,1:end-1));
        end
        
        %>>KNN --> sort Euclidist --> select k distances --> find mode
        %-->find ind
        sort(Euclidist);
        [val,ind] = Euclidist(:,1:K);
        
        predict(test) = traindata(ind,end);
    end
    
    actual = testdata(:,end);
    rate = 100*sum(actual==predict')/n;