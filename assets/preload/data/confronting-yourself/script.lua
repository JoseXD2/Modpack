local keepScroll = false

function onCreate()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
end

function onDestroy()
	if keepScroll == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false);
	elseif keepScroll == true then
		keepScroll = false;
	end
end

function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('iconP2.alpha', 0)
	triggerEvent('Change Character', 0, 'bfc')
	triggerEvent('Change Character', 1, 'bf-fade')

	return Function_Continue
end

function onStepHit()
	if curStep == 64 or curStep == 128 or curStep == 160 or curStep == 192 or curStep == 224 or curStep == 256 or curStep == 336 or curStep == 368 or curStep == 487 or curStep == 608 or curStep == 704 or curStep == 768 or curStep == 960 or curStep == 1088 or curStep == 1216 or curStep == 1296 or curStep == 1328 or curStep == 1376 or curStep == 1408 or curStep == 1424 or curStep == 1432 then
	triggerEvent('Change Character', 0, 'bfc')
	triggerEvent('Change Character', 1, 'bf-fade')
	end
	if curStep == 32 or curStep == 96 or curStep == 144 or curStep == 176 or curStep == 208 or curStep == 240 or curStep == 320 or curStep == 352 or curStep == 423 or curStep == 456 or curStep == 576 or curStep == 624 or curStep == 720 or curStep == 832 or curStep == 1056 or curStep == 1136 or curStep == 1248 or curStep == 1312 or curStep == 1344 or curStep == 1392 or curStep == 1428 or curStep == 1436 then
	triggerEvent('Change Character', 0, 'bf')
	triggerEvent('Change Character', 1, 'bfc-fade')
	end
end