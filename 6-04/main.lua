-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local answerAsNumber = native.newTextField( display.contentCenterX, display.contentCenterY - 50, 100, 50)
answerAsNumber.id = ("answer textField")

local dayOfWeek = native.newTextField( display.contentCenterX, display.contentCenterY - 100, 200, 50)
answerAsNumber.id = ("day textField")

local button = display.newImageRect ( "./assets/button.png", 50, 50)
button.x = display.contentCenterX
button.y = display.contentCenterY

local function buttonTouch (event)
	local number = tonumber(answerAsNumber.text)
	local day = dayOfWeek.text

	if (day=="Saturday" or day=="Sunday") then
		local RText = display.newText ("Relax!", display.contentCenterX, display.contentCenterY + 50)
	elseif number <= 17 and (day~="Saturday" or day~="Sunday") then
			local PGText = display.newText ("Time for school", display.contentCenterX, display.contentCenterY + 50)
	else
		local GText = display.newText ("Time for work", display.contentCenterX, display.contentCenterY + 50)
	end
end

button:addEventListener ('touch', buttonTouch)