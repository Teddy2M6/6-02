local nTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 600, 110 )
nTextField.id = "n textField"

local enterTextField = display.newText( "Enter a Positive or Negative Whole Number", display.contentCenterX, display.contentCenterY - 10, native.systemFont, 55 )
enterTextField.id = "enter textField"
enterTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./calculate.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = 1300
calculateButton.id = "calculate button"

display.setDefault("background", 0, 155, 0)

local function calculateButtonTouch( event )

	local numberInput
	
	numInt = nTextField.text
	
	if numInt > '0' then
		display.newText('Its Positive', display.contentCenterX, display.contentCenterY - 330, native.systemFont, 90 )

	else
		display.newText('Its Negative', display.contentCenterX, display.contentCenterY - 90, native.systemFont, 90 )
	
	end
	
	return true

end

calculateButton:addEventListener( "touch", calculateButtonTouch )