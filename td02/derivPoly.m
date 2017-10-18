function [ coeff ] = derivPoly( y )
%DERIVPOLY Summary of this function goes here
%   Detailed explanation goes here
for i=length(y)-1:-1:1
    coeff(i) = y(i)*(length(y)-i);
end

