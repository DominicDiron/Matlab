function data = shuffleData(data) %function for shuffle the data
    [m,n] = size(data);
    indices = randperm(m);
    data = data(indices,:);
    