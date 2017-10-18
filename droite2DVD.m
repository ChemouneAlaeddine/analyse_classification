function [ y ] = droite2DVD( x, vd, p )
%DROITE2DVD Summary of this function goes here
%   Detailed explanation goes here
y = p(2) + ((x - p(1)) / vd(1)) * vd(2);
end