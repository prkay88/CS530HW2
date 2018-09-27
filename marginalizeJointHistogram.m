function [Gx, Gy] = marginalizeJointHistogram(Gxy)
    [rows,cols] = size(Gxy)
    for i = 1:rows
        Gx(i) = sum(Gxy(i,:));
    end
    for j = 1:cols
       Gy(j) = sum(Gxy(:,j)); 
    end
end