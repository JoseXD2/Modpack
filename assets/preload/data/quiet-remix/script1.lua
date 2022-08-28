local allowCountdown = false
local xx = 380;
local yy = 350;
local yyh = 350;
local xx2 = 1120;
local yy2 = 550;
local ofs = 30;
local ofs2 = 120;
local followchars = true;
local del = 0;
local del2 = 0;
function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.01);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('S', 'b', 0, 0);
		setObjectCamera('S', 'hud');
        scaleObject('S',3,3);
        setProperty('S.antialiasing',false);
		addLuaSprite('S', true);
		runTimer('appear', 2, 1);
		runTimer('fadeout', 2, 1);
	elseif tag == 'fadeout' then
		doTweenAlpha('blackfade', 'S', 0, 1, 'linear');
	end
end