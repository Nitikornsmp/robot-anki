*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Adressit page
	Turn Anki site on 	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	nav
	Click Element	//*[@id="nav"]/li[8]/a/span
	Title Should Be		Anki :: Adressit
	Looking for site header
	Looking for menubar
	Looking for footer without scroll
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Adressit
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 600 Suruvalitteluadressit
	Wait Until Element Contains 	//*[@id="product-price-475"]		6,80 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Suruvalitteluadressi surukotiin tomitettuna
	Wait Until Element Contains 	//*[@id="product-price-706"]		6,80 €
	Wait Until Element Is Visible	${b2}
	