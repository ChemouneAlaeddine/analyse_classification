function [ V ] = CalculACP( Echantillon )
%CALCULACP Summary of this function goes here
%   Detailed explanation goes here

A= cov(Echantillon)
eig(A)
[C D] = eig(A);
V = [C(:,1) C(:,2)]

end

