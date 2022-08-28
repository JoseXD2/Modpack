function onCreate()
	-- background shit
	makeLuaSprite('kitchen', 'orange/kitchen', -300, -100);
	setLuaSpriteScrollFactor('kitchen', 1, 1);
	

	addLuaSprite('kitchen', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end