
function onCreate()


	makeLuaSprite('fondoQM', 'fondoQM', -900, -600);

	addLuaSprite('fondoQM', false);

makeAnimatedLuaSprite('chicos_asustaos','chicos_asustaos',100,150)
addAnimationByPrefix('chicos_asustaos','chicos_asustaos','chicos asustaos',24,true)
	objectPlayAnimation('chicos_asustaos','chicos_asustaos',true)
addLuaSprite('chicos_asustaos',false)

makeAnimatedLuaSprite('JAKE FONDO', 'JAKE_FONDO', 190, -420);
addAnimationByPrefix('JAKE FONDO', 'JAKE FONDO', 'JAKE', 24, true);
	objectPlayAnimation('Jake FONDO','Jake FONDO',true)
addLuaSprite('JAKE FONDO', false);
end