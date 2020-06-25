% this file you launch on your PC MATLAB Session, it will access data
% saved by sensors.m on MATLAB Drive and plot it
% Alex Pedcenko 2020 

clear all
close all

% Lets plot magnetic field log
B=[0,0,0]; %initial magnetic field vector
t=[0]; % time
freq=5; % sampling frequency (from sensors' settings on your mobile device)
dt=1/freq;

b_field=plot(t,B(:,1),t,B(:,2),t,B(:,3)); % initial plot
legend('Bx','By','Bz');

while true
try % in case file is open for writing on a device, error will show, so we do "try" 
load('sensors.mat')
[N ~]=size(B);

t=[0:(N-1)]*dt;

set(b_field(1),'XData',t,'YData',B(:,1)); % Bx
set(b_field(2),'XData',t,'YData',B(:,2)); % By
set(b_field(3),'XData',t,'YData',B(:,3)); % Bz
drawnow
pause(1.33) % thying not to be "in sync" with writing of sensors.mat by the phone
end
end