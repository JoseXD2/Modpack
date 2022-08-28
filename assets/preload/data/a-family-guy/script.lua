local xx = 520;
local yy = 450;
local xx2 = 1500;
local yy2 = 650;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
local drain = 0.01 -- the funnelocal angleshit = 1;
local anglevar = 1;
function onBeatHit()
    if curBeat > 19 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'quadOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'quadIn')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'quadOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'quadIn')
    end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.15 then
        setProperty('health', health- 0.015);

        local luckyRoll = math.random(1, 50)
        local luckyRoll2 = math.random(1, 50)
        
        if mustHitSection == false then
            if (luckyRoll >= 45) then
                cameraShake('hud', 0.08, 0.05);
            end
        end
        if mustHitSection == false then
            if (luckyRoll2 >= 45) then
                cameraShake('game', 0.08, 0.05);
            end
        end
    end
end

function onUpdate()
    if del > 0 then
        del = del - 1
    end
    if del2 > 0 then
        del2 = del2 - 1
    end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
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

            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            setProperty('defaultCamZoom',1.0)
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
end

function onCreate()
    makeLuaText('watermark', songName .. " | Song Created By Hayseed Here", 0, 2, 700); -- You can edit the created by Prisma Text just dont change anything else
        setTextSize('watermark', 20);
        addLuaText('watermark');
    end

    stepHitFuncs = { --All has been code for Bycach_broy and some scripts examples. If you are going to use it please consider leaving me credits. Thanks

    [1479] = function() --CurStep Number, NOT BEATS
        makeAnimatedLuaSprite('house2', 'house2', -600, -300);
        scaleObject('house2', 0.9, 0.9);
        addLuaSprite('house2',false)
        addAnimationByPrefix('house2', ' ', ' ',  24, true);
        objectPlayAnimation('house2', 'one', true)
        setProperty('house2.visible', true)

    end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end
