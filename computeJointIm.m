function GXY = computeJointIm(X, Y)
    GXY = zeros(256);
    [rows, cols] = size(X);
    for i = 1:rows
        for j = 1:cols
            val = X(i,j)+1;
            val1 = Y(i,j) +1;
            GXY(val, val1) = GXY(val, val1) +1;
        end
    end
end