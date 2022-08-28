function onCreate()
	-- background shit
	makeLuaSprite('skynight', 'skynight', -500, -300);
    setLuaSpriteScrollFactor('skynight', 0.7, 0.7);
	makeLuaSprite('Room', 'Room', -500, -300);
	makeLuaSprite('Light', 'Light', -500, -300);
    addAnimationByPrefix('glitch','idle','glitch idle',3,true);
    makeAnimatedLuaSprite('glitch','glitch',-780, -360);
    makeAnimatedLuaSprite('techoglitch','techoglitch',-400, -300);
    addAnimationByPrefix('techoglitch','idle','techoglitch idle',3,true);
    setLuaSpriteScrollFactor('techoglitch', 1.4, 1.4);
    makeAnimatedLuaSprite('pibby', 'pibby', 1000, 470);
    addAnimationByPrefix('pibby','idle', 'pibby idle',15,true)

     
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
                                        makeLuaSprite('skynight', 'skynight', -500, -300);
                                        setLuaSpriteScrollFactor('skynight', 0.7, 0.7);
                                        makeAnimatedLuaSprite('glitch','glitch',-780, -360);

                                        addAnimationByPrefix('glitch','idle','glitch idle',3,true);
                                        makeAnimatedLuaSprite('pibby', 'pibby', 1000, 470);
                                        addAnimationByPrefix('pibby','idle', 'pibby idle',15,true);
                                      
		makeLuaSprite('Room', 'Room', -500, -300);
		
	                    makeLuaSprite('Light', 'Light', -500, -300);
	                    makeAnimatedLuaSprite('techoglitch','techoglitch',-400, -300);
                        addAnimationByPrefix('techoglitch','idle','techoglitch idle',3,true);
                        setLuaSpriteScrollFactor('techoglitch', 1.4, 1.4);
	                    
	end
                    addLuaSprite('skynight', false);
	                addLuaSprite('Room', false);
                    addLuaSprite('glitch',true);
                    addLuaSprite('pibby', true)
                    addLuaSprite('techoglitch',true);
                    addLuaSprite('Light', false);
         


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end