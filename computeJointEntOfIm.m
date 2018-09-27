function ent = computeJointEntOfIm(X, Y)
    ent = 0;
    Pxy = computeJointIm(X, Y);
    [rows, cols] = size(Pxy);
    total = rows*cols;
    for i = 1:rows
        for j = 1:cols
            probXY = Pxy(i, j) / total;
            if probXY ~= 0
                ent = probXY*log2(probXY);
            end
        end
    end
    ent = abs(ent);
end