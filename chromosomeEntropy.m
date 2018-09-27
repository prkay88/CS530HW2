function ent = chromosomeEntropy(fname)
    [fid,msg] = fopen(fname,'r','native');
    chrom = fscanf(fid, "%c");
     keys = {'A', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'Y', '$'};
     keyList = ['A','C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'Y', '$']; 
    vals = zeros(1, 21);
    map = containers.Map(keys, vals);
    total = 0;
    ent = 0;
    for i = 1:length(chrom)
        if ismember(chrom(i), keys) ~= 0  
            map(chrom(i)) = map(chrom(i)) + 1;
            total = total + 1;
        end
    end
    for j = 1:length(keys)
        dist(j) = map(keyList(j)) / total;
        if dist(j) ~= 0
            ent = dist(j) * log2(dist(j)) + ent;
        end
    end
    ent = abs(ent);
    sum(dist)
    
end