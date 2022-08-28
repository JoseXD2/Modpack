function onCreate()
	-- background stuff
	makeAnimatedLuaSprite('percy','background/percyDrive', 0, 0)
	addAnimationByPrefix('percy','vroom','drive',24,true)
	objectPlayAnimation('percy','vroom',false)
	setScrollFactor('percy', 0.9, 0.9);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('tracks','background/tracks', 0, 0)
		addAnimationByPrefix('tracks','dance','bg',24,true)
		objectPlayAnimation('tracks','dance',false)
		setScrollFactor('tracks', 0.9, 0.9);
	end

	;
	addLuaSprite('tracks', false);
	addLuaSprite('percy', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end