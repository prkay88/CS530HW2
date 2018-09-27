function h=histogram(f,N)

% histogram - computes a grey level histogram.
% version 1
% Lance Williams 
% Dept. of Computer Science
% Univ. of New Mexico
%

for i=0:N-1
  h(i+1) = sum(sum(f==i));
end