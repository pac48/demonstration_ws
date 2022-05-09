clear all
rosshutdown()
%% init speech
global beginPlayer
global endPlayer

[y,Fs] = audioread('begin.mp3');
beginPlayer = struct('y', y, 'Fs', Fs);

[y,Fs] = audioread('ended.mp3');
endPlayer = struct('y', y, 'Fs', Fs);

%% init ROS
rosinit('192.168.1.5')
global lastPressed
lastPressed = rostime('now');
sub = rossubscriber('/joy', @(src, msg) callback(src, msg));


%%





