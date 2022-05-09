function callback(~, msg)
global lastPressed
global beginPlayer
global endPlayer

if msg.Buttons(8) && rostime('now') - lastPressed > 1
    disp(8)
    lastPressed = rostime('now');
    sound(beginPlayer.y, beginPlayer.Fs)
    pause(1)
elseif msg.Buttons(9)  && rostime('now') - lastPressed > 1
    disp(9)
    lastPressed = rostime('now');
    sound(endPlayer.y, endPlayer.Fs)
    pause(1)
end
end