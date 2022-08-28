--thx vs ben devs
--setProperty('scoreTxt.visible', false)
--setProperty('healthBar.visible', false)
--setProperty('healthBarBG.visible', false)
--setProperty('iconP1.visible', false)
--setProperty('iconP2.visible', false)
--setProperty('timeBar.visible', false)
--setProperty('timeBarBG.visible', false)
--setProperty('timeTxt.visible', false)

--	 doTweenAlpha('uiShow1', 'healthBarBG', 1, 1, cubeInOut);
--	 doTweenAlpha('uiShow2', 'healthBar', 1, 1, cubeInOut);
--	 doTweenAlpha('uiShow3', 'iconP1', 1, 1, cubeInOut);
function onCreate()
	counter = 0
	  setProperty('timeBar.visible', false)
	  setProperty('timeBarBG.visible', false)
	  setProperty('timeTxt.visible', false)
	  setProperty('scoreTxt.visible', false)
	  doTweenAlpha('characterHide1', 'gf', 0, 0.01);
	  --doTweenAlpha('characterHide2', 'boyfriend', 0, 0.01, cubeInOut);
	end

function onSongStart()
	noteTweenX('noteSetup1', 4, 92, 2, 'cubeInOut')
	noteTweenX('noteSetup2', 5, 204, 2, 'cubeInOut')
	noteTweenX('noteSetup3', 6, 316, 2, 'cubeInOut')
	noteTweenX('noteSetup4', 7, 428, 2, 'cubeInOut')
	noteTweenX('noteSetup5', 0, 731, 2, 'cubeInOut')
	noteTweenX('noteSetup6', 1, 843, 2, 'cubeInOut')
	noteTweenX('noteSetup7', 2, 955, 2, 'cubeInOut')
	noteTweenX('noteSetup8', 3, 1067, 2, 'cubeInOut')
end
--112

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.01);
    end
end

--function onUpdate(elapsed)

--if curStep >= 0 then

   --songPos = getSongPosition()

   --local currentBeat = (songPos/1000)*(bpm/180)

   --setPropertyFromClass('openfl.Lib','application.window.x', 300-110*math.cos((currentBeat*0.30)*math.pi),0.001)
   --setPropertyFromClass('openfl.Lib','application.window.y', 500-110*math.tan((currentBeat*0.25)*math.pi),0.001)
   --end
--end