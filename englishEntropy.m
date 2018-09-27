function ent = englishEntropy()
  ent = 0;
  for i = 1:12367
    ent = ent + (.1/i)*log2(.1/i); 
  end
  ent = abs(ent);
end