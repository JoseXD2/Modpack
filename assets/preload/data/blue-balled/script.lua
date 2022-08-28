function opponentNoteHit()
    if mustHitSection == false then
        hmm = math.random(0.04, 0.07)
        health = getProperty('health')
        if getProperty('health') > 0.04 and curBeat <= 223 then
            setProperty('health', health- 0.0312)
        end
        if getProperty('health') > 0.06 and curBeat >= 224 then
            setProperty('health', health- 0.0824)
        end
    end
end

function goodNoteHit()
    if curBeat <= 223 then
        setProperty('health', getProperty('health')+ 0.0112)
    end
    if curBeat >= 224 then
        setProperty('health', getProperty('health')+ 0.0689)
    end
end
local keepScroll = false
function onCreate()
    triggerEvent('Camera Follow Pos', 625, 600)
    triggerEvent('Change Character', '2', 'bfYOUgf')
    setProperty('gf.alpha', tonumber(0))
    setProperty('dad.alpha', tonumber(0))
    setProperty('health', 2)
end

function onCreatePost()
	debugPrint("5 Times. That's the limit. Don't mess up.")
end

function onUpdate()
    --healthDrain = true
    --hmm = math.random(0.05, 1.9)
    --if curBeat % 2 == 0 then
      --  setProperty('health', getProperty('health')+ hmm) 
    --elseif curBeat % 2 == 1 then
     --   setProperty('health', getProperty('health')- hmm)
    --elseif getProperty('health') < 0 then
     --   heathDrain = false
       -- setProperty('health', getProperty('health')+ 0.05)
    --end
    
    --  test stuff
   -- if keyJustPressed('space') then
     --   addMisses(1)
    --end
   -- if keyPressed('space') then
     --   setProperty('health', 0.2)
    --end
    -- icon fading shit
    if curBeat % 2 == 1 and getProperty('health') <= 1.7 then 
        doTweenAlpha('areYouFading?Tween', 'iconP1', 0.6, 0.3, 'linear')

    elseif curBeat % 2 == 0 and getProperty('health') <= 1.7 then
        doTweenAlpha('areYouNotFading?Tween', 'iconP1', 0.9, 0.3, 'linear')

    elseif curBeat % 2 == 1 and getProperty('health') <= 0.29 then
        doTweenAlpha('ohShitTween', 'iconP1', 0.1, 0.1, 'linear')

    elseif curBeat % 2 == 0 and getProperty('health') <= 0.29 then
        doTweenAlpha('ohShitFuckTween', 'iconP1', 0.4, 0.1, 'linear')

    elseif curBeat % 2 == 1 and getProperty('health') >= 1.8 then
        doTweenAlpha('nahWeGooTween', 'iconP1', 0.8, 0.3, 'linear')

    elseif curBeat % 2 == 0 and getProperty('health') >= 1.8 then
        doTweenAlpha('nahWeGoo2Tween', 'iconP1', 1, 0.3, 'linear')

    elseif curBeat == 329 then
        doTweenAlpha('nahOkTween', 'iconP1', 1, 0.2, 'linear')
        close(true)
    end
end

function onBeatHit()

    if curBeat == 31 then
        characterPlayAnim('boyfriend', 'hurt')
        setProperty('health', 1)
        --triggerEvent('Change Character', 'bYOUGHOST')
        removeLuaText('Ending', true)
    end
    if curBeat == 329 and getProperty('songMisses') <= 2 then
        --triggerEvent('Alt Idle Animation', '0', '-alt')
    end
    if curBeat == 160 then 
    --    triggerEvent('Change Character', '0', 'bfYOUGHOST')
    --    triggerEvent('Change Character', '1', 'bf@NOTYOU')
    --    setProperty('boyfriend.alpha', tonumber(0.5))
    --    setProperty('dad.alpha', tonumber(1))
    end
end
-- long function time
function onStepHit()
    if curStep == 1 then
        noteTweenAlpha('noteFade1Tween', 0, 1, 0.1, 'linear')
        noteTweenAlpha('noteFade2Tween', 1, 1, 0.1, 'linear')
        noteTweenAlpha('noteFade3Tween', 2, 1, 0.1, 'linear')
        noteTweenAlpha('noteFade4Tween', 3, 1, 0.1, 'linear')
             -- your? note 1
        noteTweenX("x5", 0, 410, 16, "quartInOut");
        noteTweenAngle("r5", 0, 360, 16, "quartInOut");
        noteTweenAlpha("o5", 0, 0.7, 0.2,"quartInOut");
                 -- your? note 2
        noteTweenX("x6", 1, 522, 16, "quartInOut");
        noteTweenAngle("r6", 1, 360, 16, "quartInOut");
        noteTweenAlpha("o6", 1, 0.7, 0.2, "quartInOut");
                 -- your? note 3
        noteTweenX("x7", 2, 633, 16, "quartInOut");
        noteTweenAngle("r7", 2, 360, 16, "quartInOut");
        noteTweenAlpha("o7", 2, 0.7, 0.2, "quartInOut");
                 -- your? note 4
        noteTweenX("x8", 3, 745, 16, "quartInOut");
        noteTweenAngle("r8", 3, 360, 16, "quartInOut");
        noteTweenAlpha("o8", 3, 0.7, 0.2, "quartInOut");
                -- !your note 1
        noteTweenX("Mx5", 4, 410, 16, "quartInOut");
        noteTweenAngle("Mr5", 4, 360, 16, "quartInOut");
        noteTweenAlpha("Mo5", 4, 1, 16,"quartInOut");
                 -- !your note 2
        noteTweenX("Mx6", 5, 522, 16, "quartInOut");
        noteTweenAngle("Mr6", 5, 360, 16, "quartInOut");
        noteTweenAlpha("Mo6", 5, 1, 16, "quartInOut");
                     -- !your note 3
        noteTweenX("Mx7", 6, 633, 16, "quartInOut");
        noteTweenAngle("Mr7", 6, 360, 16, "quartInOut");
        noteTweenAlpha("Mo7", 6, 1, 16, "quartInOut");
                     -- !your note 4
        noteTweenX("Mx8", 7, 745, 16, "quartInOut");
        noteTweenAngle("Mr8", 7, 360, 16, "quartInOut");
        noteTweenAlpha("Mo8", 7, 1, 16, "quartInOut");

    end
    if curStep == 128 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 160 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 192 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 224 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 256 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 320 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    -- blammed lights section a step after here (weird)
    if curStep == 383 then
        makeLuaSprite('ballOver', 'balls_overlay', -15, 200)
        addLuaSprite('ballOver', true)
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        setProperty('gf.alpha', tonumber(1))
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
    --    setProperty('boyfriend.alpha', tonumber(0.5))
    --    setProperty('dad.alpha', tonumber(0.5))
    --    setProperty('gf.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep >= 383 and curStep <= 639 and mustHitSection == false then
        setProperty('health', 0.15)
    end
    if curStep == 384 then
        setProperty('boyfriend.alpha', tonumber(0.6))
        setProperty('dad.alpha', tonumber(0.6))
    end
    if curStep == 638 then
        --triggerEvent('Blammed Lights', '0')
        setProperty('gf,alpha', tonumber(0))
    end
    -- blammed lights end here ( cool B*) )
    if curStep == 640 then
        removeLuaSprite('ballOver', true)
        setProperty('health', 1)
       -- triggerEvent('Camera Follow Pos', 625, 600)
        triggerEvent('Alt Idle Animation', '2', '-alt')
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 641 then
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
    end
    if curStep == 704 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 768 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 832 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 896 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 928 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 960 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 992 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1024 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1088 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1152 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1216 then
        triggerEvent('Change Character', '0', 'bfYOU')
        triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
        setProperty('boyfriend.alpha', tonumber(1))
        setProperty('dad.alpha', tonumber(0.5))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1280 then
        triggerEvent('Change Character', '0', 'bfYOUGHOST')
        triggerEvent('Change Character', '1', 'bf@NOTYOU')
        setProperty('boyfriend.alpha', tonumber(0.5))
        setProperty('dad.alpha', tonumber(1))
        cameraFlash('game', '0xFFFFFF', 0.5, true)
    end
    if curStep == 1313 then
        if getProperty('songMisses') <= 5 then
            triggerEvent('Change Character', '0', 'bf')
            triggerEvent('Change Character', '1', 'bf@NOTYOUGHOST')
            setProperty('boyfriend.alpha', tonumber(1))
            doTweenAlpha('youWon', 'dad', 0, 0.6, 'linear')
            cameraFlash('game', '0xFFFFFF', 0.5, true)
            --triggerEvent('Alt Idle Animation', '0', '-alt')
            characterPlayAnim('boyfriend', 'hey', true)
            setProperty('health', 2)
        elseif getProperty('songMisses') > 5 then
            setProperty('health', 0.01)
            playSound('fnf_loss_sfx')
            characterPlayAnim('boyfriend', 'hurt', true)
            doTweenAlpha('boyfriendlostTween', 'boyfriend', 0, 0.5, 'linear')
            if curStep == 1317 then
                characterPlayAnim('dad', 'singRIGHT', true)
            end
        end
    end
end