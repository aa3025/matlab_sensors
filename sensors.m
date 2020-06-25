% this file you launch on your mobile phone, it is continiously
% logging the data from enabled [in settings of Matlab Mobile app] sensors (max execution time is 240 seconds)
% Alex Pedcenko 2020 


clear all
m = mobiledev; % open mobiledev object
m.Logging = 1; % enable logging of sensors
discardlogs(m); % clearing all previous sensors logs on device


freq=5; % logging frequency from your device (MATLAB Mobile App settings), Hz 

% let's log for 4 min max
seconds=240; % max script execution time on MATLAB mobile
finalsamples=seconds*freq; % Nr of samples in the log

samples=0;
while samples<=finalsamples
    B=m.magfieldlog;
    a=m.accellog;
    w=m.angvellog;
    orient=m.orientlog;
    pos=m.poslog;
    speed=m.Speed;
    
    [samples, ~]=size(B);
    pause(1); % 1 sec delay between saving the data

% will save to your MATLAB Drive when run on mobile device
save('sensors.mat','B','a','w', 'orient','pos','speed'); 

end
    
