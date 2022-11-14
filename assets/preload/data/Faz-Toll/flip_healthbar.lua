function onCreate()
	if getProperty('healthBar.flipX') == false then
		setProperty('healthBar.flipX',true)
		else
		setProperty('healthBar.flipX',false)
	end
end

function onUpdatePost(elapsed)
	if getProperty('healthBar.flipX') == true then
		P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
		P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
		setProperty('iconP1.x',P1Mult - 110)
		setProperty('iconP1.origin.x',240)
		setProperty('iconP1.flipX',true)
		setProperty('iconP2.x',P2Mult + 110)
		setProperty('iconP2.origin.x',-100)
		setProperty('iconP2.flipX',true)
	else
		setProperty('iconP1.origin.x',50)
		setProperty('iconP1.flipX',false)
		setProperty('iconP2.origin.x',50)
		setProperty('iconP2.flipX',false)
	end
end