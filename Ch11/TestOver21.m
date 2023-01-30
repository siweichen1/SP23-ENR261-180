clc;
clear;
TEST_NAME = 'TestOver21';
addpath('..\..\Homework Solutions\Ch 11\');
assert(true == true, 'Smoke test failed, True ~= True');

% Things that shall be true
%   The result shall be a column vector, that is the column count shall be 1
%   The result shall have a row count of n where n is the number of dates
%   The result shall be true for dates > OR ==

% Test a scalar
dates = [1984, 02, 09];
expected = true;
result = Over21(dates, 2018, 04, 12);
assert(isequal(expected, result), 'Scalar date case is not correct');

% Test a simple case and test that the result is a column vector
dates = [1984, 02, 09; 2000, 02, 09];
expected = logical([1; 0]);
result = Over21(dates, 2018, 04, 12);
% Use this result to test that results are a column vector
assert(size(result, 2) == 1, 'The result is not a column vector or the size is incorrect, col count ~= 1');
assert(size(result, 1) == 2, 'The result is not a column vector or the size is incorrect, row count does not match');
% Now check if the simple case works
assert(isequal(expected, result), 'Simple case is not correct');

% Edge case, test a case with a value exactly equal to, one day less and 
% one day over the age of 21
dates = [1997, 04, 11; 1997, 04, 12; 1997, 04, 13];
expected = logical([1; 1; 0]);
result = Over21(dates, 2018, 04, 12);
assert(isequal(expected, result), 'Edge case is not correct');

fprintf('Congrats, all tests ran green for %s!\n\n', TEST_NAME);