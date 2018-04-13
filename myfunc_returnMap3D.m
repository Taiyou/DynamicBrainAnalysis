function [] = myfunc_returnMap3D(data, D)
% This program is intended to visualize the 3D returnMap of time-series.
%
% inputs:
%   data: time-series
%   D: delay until
% output:
%   scatter plot
%
% by Hiroaki Hamada, oist, 2018/April/13th

nData = length(data(1,:));

for delay = 1:D
	figure;
	X = data(1:nData-delay*2);
	X_delay1 = data(delay+1:nData-delay);
    X_delay2 = data(delay*2+1:nData);

	plot3(X,X_delay1,X_delay2)

	title('ReturnMap')
end
