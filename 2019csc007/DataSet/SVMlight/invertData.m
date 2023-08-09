function Data = invertData(Data,class)

%This function is used to invert the +1 Class and -1 Classes

%******************Interested Class*****************
indices = (Data(:,end) == class);
Data(indices,end) = 1;


%******************Non-Interested Class*****************
ind = ~indices;
Data(ind,end) = -1;

