% this file you launch on your mobile phone, it continiously
% logging the data from enabled sensors (max execution time is 240 seconds)
% Alex Pedcenko 2020 


clear all
m = mobiledev;
m.Logging = 1;
discardlogs(m); % clearing all logs on device


freq=5; % logging frequency from your device MATLAB settings, Hz 

% let's log for 4 min
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
    
