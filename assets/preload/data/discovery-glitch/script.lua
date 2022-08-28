local xx = 520;
local yy = 560;
local xx2 = 820;
local yy2 = 560;
local ofs = 60;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate(elapsed)
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

    if curStep >= 0 then
        doTweenAlpha('unlive', 'camHUD', 0, 0.1, 'cirOut');
        makeLuaSprite('black','negro', -400, 0);
        makeLuaSprite('credit1', 'Credits1', 0, 0);
        setObjectCamera('credit1', 'Other');
        addLuaSprite('credit1', false);
        scaleObject('credit1', 0.5, 0.520);
    end
    if curStep >= 63 then
        removeLuaSprite('credit1', false)
        makeLuaSprite('credit2', 'Credits2', 0, 0);
        setObjectCamera('credit2', 'Other');
        addLuaSprite('credit2', false);
        scaleObject('credit2', 0.5, 0.520);
    end
    if curStep >= 111 then
        removeLuaSprite('credit2', false);
        addLuaSprite('black', true);
    end
    if curStep >= 143 then
        doTweenAlpha('undie', 'camHUD', 1, 0.1, 'cirIn');
        cancelTween('unlive');
    end
    if curStep >= 271 then
        scaleObject('vg', 0.5, 0.520);
        makeLuaSprite('vg', 'VG', 0, 0);
        setObjectCamera('vg', 'Other');
        addLuaSprite('vg', true)
        cancelTween('undie');
        removeLuaSprite('black',false);
        doTweenZoom('CameraZoom1', 'camGame', 1.2, 0.1, 'cirIn');
    end
    if curStep >= 303 then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.5, 0.1, 'cirOut');
    end
    if curStep >= 399 then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 431 then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 479 then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.1, 0.1, 'cirOut');
    end
    if curStep >= 495 then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 527 then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 559 then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.1, 0.1, 'cirOut');
    end
    if curStep >= 623 then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 639  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.1, 0.1, 'cirOut');
    end
    if curStep >= 655  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 735  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 751  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 815  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.3, 0.1, 'cirOut');
    end
    if curStep >= 879  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.5, 0.1, 'cirOut');
    end
    if curStep >= 907  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 911  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.5, 0.1, 'cirOut');
    end   
    if curStep >= 943  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.2, 0.1, 'cirOut');
    end

    if curStep >= 983  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.1, 0.1, 'cirOut');
    end
    if curStep >= 991  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 1039  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 1055  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 1103  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.2, 0.1, 'cirOut');
    end
    if curStep >= 1119  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 1183  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.3, 0.1, 'cirOut');
    end
    if curStep >= 1199 then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.1, 0.1, 'cirOut');
    end
    if curStep >= 1215 then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 1247  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.5, 0.1, 'cirOut');
    end
    if curStep >= 1311  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 1.7, 0.1, 'cirOut');
    end
    if curStep >= 1327  then
        cancelTween('CameraZoom1');
        doTweenZoom('CameraZoom2', 'camGame', 1.5, 0.1, 'cirOut');
    end
    if curStep >= 1375  then
        cancelTween('CameraZoom2');
        doTweenZoom('CameraZoom1', 'camGame', 0.7, 0.1, 'cirOut');
    end
    if curStep >= 1560  then
        addLuaSprite('black',true)
    end
--   if dadName == 'peppa' then --replace the name for your character name
--		for i=0,4,1 do
--			setPropertyFromGroup('opponentStrums', i, 'texture', 'badNOTE_assets')
--		end
--		for i = 0, getProperty('unspawnNotes.length')-1 do
--			if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
--				setPropertyFromGroup('unspawnNotes', i, 'texture', 'badNOTE_assets'); --Change texture
--			end
--		end
--	end

    function noteMiss(id, direction, noteType, isSustainNote)
            makeLuaSprite('estatic', 'estatica1', 0, 0);
            doTweenColor('hello', 'estatic', 'FFFFFFFF', 0.5, 'quartIn');
            addLuaSprite('estatic', true);
            setObjectCamera('estatic', 'Other');
            scaleObject('estatic', 1, 1);
            runTimer('wait', 0.1);
            playSound('miss', 0.3);
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
             removeLuaSprite("estatic", false)
            end
        end
    end
end
--<