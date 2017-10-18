function [ y ] = valeurPolynome(coeff, x)
y = 0;
puiss = 0;
for i=1:1:length(coeff)
puiss = ((length(coeff))-i);
y = y + (x^puiss)*coeff(i);
end
