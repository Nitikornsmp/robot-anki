*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
landing page
	Turn Anki site on 	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	nav
	Title Should Be		Anki :: Postimyyntiä vuodesta 1931
	Looking for site header
	Looking for menubar
	Looking for footer 
	#looking for content
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/div/h2		Tervetuloa Ankin verkkokauppaan — meiltä saat kortit, tuikut, adressit, servietit sekä vaihtelevia muita tuotteita elämän kaikkiin tilanteisiin.
	
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/div/h1/span	Lähetämme tilauksesi nopeasti 1-3 arkipäivässä.
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[1]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[1]/div/a/span	Postikortit ym Painotuotteet
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[2]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[2]/div/a/span	Ystävänpäivä
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[3]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[3]/div/a/span	Kevät
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[4]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[4]/div/a/span	Adressit
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[5]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[5]/div/a/span	Tuikkukynttilät
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[6]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[6]/div/a/span	Servietit
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[7]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[7]/div/a/span	Kuvastotilaus
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[8]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[8]/div/a/span	Tarjoustuotteet
	
	Wait Until Element Is Visible		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[9]/a
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[9]/div/a/span	Painotyöt
	Wait Until Element Contains			//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[2]/div/ul/li[9]/div/div/p		Ankin oman digipa