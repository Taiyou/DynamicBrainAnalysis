function [] = myfunc_returnMap(data, D,option)
% This program is intended to visualize the return map of the time series data
% 
% input:
% 	date: time series data (timeseries x 1)
%	D: maximum delay for the return Map 
%	option: linear or polar coordinates
%		'linear':
%		'polar':
%
% output:
%	visualization of the datasets
%
% by Hiroaki Hamada, oist, 2018/April/13th


for delay = 1:D
	figure;
	X = data(1:length(data(1,:))-delay+1);
	X_delay = data(delay:length(data(1,:)));


	if option = 'linear',
		plot(X,X_delay)

	else if option = 'polar',
		% theta
		theta_n = atan(X_delay./X)
		theta_n1 = theta_n(1:length(theta_n)-1)
		theta_n2 = theta_n(2:length(theta_n))

		plot(theta_n1, theta_n2,'.')

	% default
	else
		plot(X,X_delay)
	end
	
	title('ReturnMap')
	xlabel('X(t)');
	ylabel(strcat('X(t+', num2str(delay), ')'))
end
