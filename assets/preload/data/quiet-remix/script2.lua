local angleshit = 0.8;
local anglevar = 0.8;
function opponentNoteHit()
    if curBeat > 28 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*5)
        setProperty('camGame.angle',angleshit*5)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.006, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.005, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.005, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.005, 'linear')
    end
end