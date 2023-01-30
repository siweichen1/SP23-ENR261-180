function [MatMean,MatStd] = MatStat(x) % function definition line
% H1: MatStat computes the mean and standard deviation of a matrix
% Help Text:
% Input argument:
% x = real matrix of any size
% Output Arguments:
% MatMean = mean of all elements in the matrix
% MatStat = standard deviation of all elements in the matrix

% ColumnMeans is a vector containing the mean of each colum in x
ColumnMeans = mean(x);

% Overall mean, note that we must use the name MatMean in order to return
% this value back to where the function was called from.
MatMean = mean(ColumnMeans);

% ColSumDevSq = sum of the deviations squared for each column
ColSumDevSq = sum((x - MatMean).^2);
SumDevSq = sum(ColSumDevSq);

% MatStd = sqrt(SumDevSq/(n-1)) whre n = number of elements in matrix x
% We must use the name MatStd to return this value
n = size(x,1)*size(x,2);  % rows*columns
MatStd = sqrt(SumDevSq/(n-1));
                   
