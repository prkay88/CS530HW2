function GXY = jointHistogram(greyVals1, greyVals2)
    GXY = zeros(256);
    for i = 1:numel(greyVals1) 
        val = greyVals1(i)+1;
        val1 = greyVals2(i) +1;
        GXY(val, val1) = GXY(val, val1) +1;

    end
end