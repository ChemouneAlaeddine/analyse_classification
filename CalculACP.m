function [ V ] = CalculACP( Echantillon )
%CALCULACP Summary of this function goes here
%   Detailed explanation goes here

A= cov(Echantillon)

[C D] = eig(A);
Vdir1 = C(:,1);
Vdir2 = C(:,2);
V = [Vdir1 Vdir2];

end

