# matlab_sensors
Accessing data from sensors on mobile device. 

sensors.m -- to be run on mobile device from MATLAB Mobile app

plotsensors.m -- to be run on computer running normal MATLAB with the same MATLAB Drive account as on mobile device.


We install MATLAB Mobile on the phone from app store and launch MATLAB Mobile app. In its settings we enable "Stream to -> Live stream to MATLAB" and activate any sensors we want to record. Then we launch the sensors.m script in command line of the MATLAB Mobile on the phone and leave it running, do not lock the phone or minimize the MATLAB Mobile app. Then we start the second script (plotsensors.m) on our PC, which has the same MATLAB Drive account connected, change current working folder to MATLAB Drive (where sensors.mat data file is created by the phone) and launch plotsensors.m. The data from the phone is plotted on PC and updated every second or whatever interval you chose. The speed of syncronisation depends on how frequently the data is sent to MATLAB Drive by the phone and synced to your PC.
