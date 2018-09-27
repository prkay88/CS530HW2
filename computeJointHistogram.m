function GXY = computeJointHistogram(fileName)
    [R,G,B] = readppm(fileName);
    GXY = zeros(256);
    for i = 1:numel(R) 
        val = R(i)+1;
        val1 = G(i) +1;
        GXY(val, val1) = GXY(val, val1) +1;

    end
    grey = mat2gray(GXY)
    imshow(grey)
end

