display.setDefault( "background", 355/255, 138/255, 124/255 )



local image = display.newImageRect( "assets/images/age.png", 130, 130 )

image.x = 160

image.y = 60



local calculateButton = display.newImageRect( "assets/images/enterButton.png", 200, 100 )

calculateButton.x = display.contentCenterX

calculateButton.y = display.contentCenterY

calculateButton.id = "calculate button"



print( "What do you think my age is? " )



answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )

answerAsNumberField.id = "Answer textField"



responseText = display.newText( "What do you think my age is?!", 160, 150, native.systemFont, 20 )

responseText:setFillColor( 255/255, 255/255, 255/255 )



local function calculateButtonTouch( event )



ageToGuess = 15

answerAsNumber = tonumber(answerAsNumberField.text)



if answerAsNumber > ageToGuess then

  	

  	print("")

  	print (ageToGuess)

    print( "Nooo that's too big" )

    print( "Please Try Again!!!" )

    responseText.text = "Nooo that's too big!"



elseif answerAsNumber < ageToGuess then 



	print("")

	print (ageToGuess)

	print( "MMMM to close but am older!")

	print( "Please Try Again!!!" )

	responseText.text = "MMMM to close but am older!"



else 

	

	responseText.text = "You guessed my age!"

	print ("")

	print (ageToGuess)

	print("You're right!")



end



end



calculateButton:addEventListener( "touch", calculateButtonTouch )