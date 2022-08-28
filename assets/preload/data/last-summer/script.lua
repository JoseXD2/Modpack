function onCreate()

	makeLuaSprite('sky','sky',-200,-200)
	addLuaSprite('sky',false)
	setLuaSpriteScrollFactor('sky', 0.5, 0.5);
        scaleObject('sky', 2, 2)

        makeLuaSprite('yard','yard',-200,-400)
	addLuaSprite('yard',false)
	setLuaSpriteScrollFactor('yard', 0.9, 0.9);
        scaleObject('yard', 2, 2)

end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.02);
    end
end
