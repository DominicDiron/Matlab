function [train,test] = scaleData(train,test)
    
    [row,col] = size(train);
    normalMax = 1;
    normalMin = -1;
    
    %here (col-1) mean in dataset last column always represent label it will
    %not need
    for i=1:(col-1)
        realMax = max(train(:,i));
        realMin = min(train(:,i));
        ratio_scale = (normalMax-normalMin)/(realMax-realmin);
        train(:,i) = (ratio_scale*(train(:,i)-realMin))+normalMin;    
        test(:,i) = (ratio_scale*(test(:,i)-realMin))+normalMin;
    end