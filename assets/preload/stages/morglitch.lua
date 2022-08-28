function onCreate()
	-- background shit
	makeLuaSprite('morglitch', 'morglitch', -600, -300);
	setScrollFactor('morglitch', 0.9, 0.9);
	
	makeLuaSprite('black2', 'black2', -650, 600);
	setScrollFactor('black2', 0.9, 0.9);
	scaleObject('black2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('black3', 'black3', -125, -100);
		setScrollFactor('black3', 0.9, 0.9);
		scaleObject('black3', 1.1, 1.1);
		
		makeLuaSprite('black3', 'black3', 1225, -100);
		setScrollFactor('black3', 0.9, 0.9);
		scaleObject('black3', 1.1, 1.1);
		setProperty('black3.flipX', true); --mirror sprite horizontally

		makeLuaSprite('black1', 'black1', -500, -300);
		setScrollFactor('black1', 1.3, 1.3);
		scaleObject('black1', 0.9, 0.9);
	end

	addLuaSprite('morglitch', false);
	addLuaSprite('black2', false);
	addLuaSprite('black3', false);
	addLuaSprite('black3', false);
	addLuaSprite('black1', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end