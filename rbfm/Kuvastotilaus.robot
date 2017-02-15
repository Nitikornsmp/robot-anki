*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Adressit page
	Turn Anki site on 	${cr}
	#Access Kuvastotilaus page
	Wait Until Element Is Visible	nav
	Click Element	//*[@id="nav"]/li[11]/a/span
	Title Should Be		Anki :: Kuvastotilaus
	Looking for site header
	Looking for menubar
	Looking for footer without scroll
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Kuvastotilaus
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Kuvasto 2016-2017
	Wait Until Element Contains 	//*[@id="product-price-678"]		0,00 €
	Wait Until Element Is Visible	${b1}