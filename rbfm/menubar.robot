*** Settings ***
Resource	resources/resource.robot
Suite Teardown	Close All Browsers

*** Variables ***
${1}	//*[@id="nav"]/li[5]/ul/li[1]
${2}	//*[@id="nav"]/li[5]/ul/li[2]
${3}	//*[@id="nav"]/li[5]/ul/li[3]
*** Keywords ***
one item
	Turn Anki site on ${cr}
	Click Element	top
second item
	
	Mouse Over	//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
seventh item
	Mouse Over	//*[@id="nav"]/li[10]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/ul
tenth item
	Mouse Over	//*[@id="nav"]/li[13]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/ul
back to main page
	Go to  http://www.anki.fi
*** Test Cases ***
sub-second-chrome
	[Tags]	backend
	Turn Anki site on	${cr}
	second item
	Click Element	//*[@id="nav"]/li[5]/ul/li[1]
	Title Should Be		Anki :: Joulukortit - Postikortit ym Painotuotteet
	second item
	Click Element	//*[@id="nav"]/li[5]/ul/li[2]
	Title Should Be		Anki :: Onnittelukortit - Postikortit ym Painotuotteet
	second item
	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
	Wait Until Element Is Visible	 //*[@id="nav"]/li[5]/ul/li[2]/ul
	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[1]
	Title Should Be		Anki :: Postikortit onnitteluun - Onnittelukortit - Postikortit ym Painotuotteet
	second item
	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
	Wait Until Element Is Visible	 //*[@id="nav"]/li[5]/ul/li[2]/ul
	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[2]
	Title Should Be		Anki :: 2-osaiset onnittelukortit - Onnittelukortit - Postikortit ym Painotuotteet
	second item
	Click Element 	//*[@id="nav"]/li[5]/ul/li[3]
	Title Should Be		Anki :: Kortit ystävälle - Postikortit ym Painotuotteet
	second item
	Click Element 	//*[@id="nav"]/li[5]/ul/li[4]
	Title Should Be		Anki :: Muut kortit - Postikortit ym Painotuotteet
	second item
	Click Element 	//*[@id="nav"]/li[5]/ul/li[5]
	Title Should Be		Anki :: Kortin askartelu - Postikortit ym Painotuotteet
	Close Browser
#sub-second-safari
#	Turn Anki site on	${sf}
#	second item
#	Click Element	//*[@id="nav"]/li[5]/ul/li[1]
#	Title Should Be		Anki :: Joulukortit - Postikortit ym Painotuotteet
#	second item
#	Click Element	//*[@id="nav"]/li[5]/ul/li[2]
#	Title Should Be		Anki :: Onnittelukortit - Postikortit ym Painotuotteet
#	second item
#	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
#	Wait Until Element Is Visible	 //*[@id="nav"]/li[5]/ul/li[2]/ul
#	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[1]
#	Title Should Be		Anki :: Postikortit onnitteluun - Onnittelukortit - Postikortit ym Painotuotteet
#	second item
#	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
#	Wait Until Element Is Visible	 //*[@id="nav"]/li[5]/ul/li[2]/ul
#	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[2]
#	Title Should Be		Anki :: 2-osaiset onnittelukortit - Onnittelukortit - Postikortit ym Painotuotteet
#	second item
#	Click Element 	//*[@id="nav"]/li[5]/ul/li[3]
#	Title Should Be		Anki :: Kortit ystävälle - Postikortit ym Painotuotteet
#	second item
#	Click Element 	//*[@id="nav"]/li[5]/ul/li[4]
#	Title Should Be		Anki :: Muut kortit - Postikortit ym Painotuotteet
#	second item
#	Click Element 	//*[@id="nav"]/li[5]/ul/li[5]
#	Title Should Be		Anki :: Kortin askartelu - Postikortit ym Painotuotteet
#	back to main page
#	Close All Browsers
#
#sub-second-firefox
#	Turn Anki site on	${ff}
#	second item
#	Click Element	//*[@id="nav"]/li[5]/ul/li[1]
#	Title Should Be		Anki :: Joulukortit - Postikortit ym Painotuotteet
#	second item
#	Click Element	//*[@id="nav"]/li[5]/ul/li[2]
#	Title Should Be		Anki :: Onnittelukortit - Postikortit ym Painotuotteet
#	second item
#	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
#	Wait Until Element Is Visible	 //*[@id="nav"]/li[5]/ul/li[2]/ul
#	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[1]
#	Title Should Be		Anki :: Postikortit onnitteluun - Onnittelukortit - Postikortit ym Painotuotteet
#	second item
#	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
#	Wait Until Element Is Visible	 //*[@id="nav"]/li[5]/ul/li[2]/ul
#	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[2]
#	Title Should Be		Anki :: 2-osaiset onnittelukortit - Onnittelukortit - Postikortit ym Painotuotteet
#	second item
#	Click Element 	//*[@id="nav"]/li[5]/ul/li[3]
#	Title Should Be		Anki :: Kortit ystävälle - Postikortit ym Painotuotteet
#	second item
#	Click Element 	//*[@id="nav"]/li[5]/ul/li[4]
#	Title Should Be		Anki :: Muut kortit - Postikortit ym Painotuotteet
#	second item
#	Click Element 	//*[@id="nav"]/li[5]/ul/li[5]
#	Title Should Be		Anki :: Kortin askartelu - Postikortit ym Painotuotteet
#	back to main page
#	Close All Browsers
third-menu
	[Tags]	backend
	Turn Anki site on 	${cr}
	Click Element	//*[@id="nav"]/li[6]/a/span
	Title Should Be		Anki :: Ystävänpäivä
fourth-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	Click Element	//*[@id="nav"]/li[7]/a/span 
	Title Should Be		Anki :: Kevät
fifth-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	Click Element	//*[@id="nav"]/li[8]/a/span
	Title Should Be		Anki :: Adressit
sixth-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	Click Element	//*[@id="nav"]/li[9]/a/span
	Title Should Be		Anki :: Tuikkukynttilät
seventh-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	seventh item
	Click Element	//*[@id="nav"]/li[10]/ul/li[1]
	Title Should Be		Anki :: Ruokaliinat 33 x 33 - Servietit
	seventh item
	Click Element	//*[@id="nav"]/li[10]/ul/li[2]
	Title Should Be		Anki :: Kahviliinat 25 x 25 - Servietit
eighth-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	Click Element	//*[@id="nav"]/li[11]/a/span
	Title Should Be		Anki :: Kuvastotilaus
	
ninth-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	Click Element	//*[@id="nav"]/li[12]/a/span
	Title Should Be		Anki :: Toimitusehdot
tenth-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	tenth item
	Click Element	//*[@id="nav"]/li[13]/ul/li[1]
	Title Should Be		Anki :: Lahjatarjoukset - Tarjoustuotteet
	tenth item
	Click Element	//*[@id="nav"]/li[13]/ul/li[2]
	Title Should Be		Anki :: Korttitarjoukset - Tarjoustuotteet
	tenth item
	Click Element	//*[@id="nav"]/li[13]/ul/li[3]
	Title Should Be		Anki :: Askartelutarvikkeet - Tarjoustuotteet
	tenth item
	Click Element	//*[@id="nav"]/li[13]/ul/li[4]
	Title Should Be		Anki :: Runokirjaset - Tarjoustuotteet

	
elevenst-menu
	[Tags]	backend
	Turn Anki site on	${cr}
	Click Element	//*[@id="nav"]/li[14]/a/span
	Title Should Be		Anki :: Painotyöt
