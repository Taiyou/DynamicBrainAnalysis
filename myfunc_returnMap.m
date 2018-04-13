function [] = myfunc_returnMap(data, D)
% This program is intended to visualize the return map of the time series data
% 
% input:
% 	date: time series data (timeseries x 1)
%	D: maximum delay for the return Map 
%
% output:
%	visualization of the datasets
%
% by Hiroaki Hamada, oist, 2018/April/13th


for delay = 1:D
	figure;
	X = data(1:length(originalData(1,:))-delay+1);
	X_delay = data(delay:length(originalData(1,:)));

	plot(X,X_delay, '.')

	title('ReturnMap')
	xlabel('X(t)');
	ylabel(strcat('X(t+', num2str(delay), ')'))
end


