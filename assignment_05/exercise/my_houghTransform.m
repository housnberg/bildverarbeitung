function [ hSpaces ] = my_houghTransform( B, circleSizes )
%MY_HOUGHTRANSFORM Summary of this function goes here
%   Detailed explanation goes here

    %These initializations are only to make execution possible.
    %+++!!!Please replace it with your own code!!!+++
    [sy, sx] = size(B);
    sc = length(circleSizes);
    hSpaces = zeros([sy,sx,sc]);

end

