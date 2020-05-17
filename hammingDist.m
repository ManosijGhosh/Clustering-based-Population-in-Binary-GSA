function dist = hammingDist(sample, clusterCenter)
    % function to calculate hamming distance between a sample solution 
    % and a cluster center
    dist = 0;
    for loop = 1:size(sample, 2)
        if(sample(loop) ~= clusterCenter(loop))
            dist = dist + 1;
        end
    end
end