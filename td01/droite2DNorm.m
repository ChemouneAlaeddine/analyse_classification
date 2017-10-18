function [ y ] = droite2DNorm( x, n, p )
%DROITE2DNORM Summary of this function goes here
%   Detailed explanation goes here
vd = [1 -n(1)/n(2)];
y = droite2DVD(x, vd, p);
end