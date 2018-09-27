function Hx = entropyOfImage(X)
 Hx = 0;
 hist = histogram(X, 256);
 total = sum(hist);
 [rows, cols] = size(X);
 for i = 1:rows
     for j = 1:cols
        pixelVal = X(i,j) + 1;
        Pij = hist(pixelVal)/total; 
        if Pij ~= 0
         Hx = Pij * log2(Pij) + Hx;
        end
     end
 end
 Hx = abs(Hx);
end