function [c,d] = result(a,b)
% result: Matlab function that calls addsub and displays the inputs and outputs
%
%         [c,d] = result(a,b)
%
%         Inputs:
%         a,b     : Numbers to be added and subtracted
%
%         Outputs:
%         c,d     : Sum and difference of a,b
%
% Programmer: Ruben Uijtdewilligen
% Date: 2026

[c,d] = addsub(a,b);
disp([a b c d])