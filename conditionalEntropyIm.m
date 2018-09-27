function condEnt = conditionalEntropyIm(before, after)
    joint = jointHistogram
    beforeHist = histogram(befre, 256);
    afterHist = histogram(after, 256);
    jointHist = histogram(jointHistogram(before, after), 256);
    condEnt = 0;
    total = sum(jointHist);
    for i = 1:length(jointHist)
        if afterHist(i) ~= 0
            condEnt = (jointHist(i)/ total)* log2((jointHist(i)/ total)/ afterHist(i)) + condEnt
        end
    end
end