*** Settings ***
Resource	resource.robot

*** Keywords ***
Looking for site header
	#Welcome msg
	Wait Until Element Contains		top		Tervetuloa
	#Site logo
	Wait Until Element Is Visible	//*[@id="top"]/div/div/div[2]/div/div/div/div[5]/div/div
	#Search field with button
	Wait Until Element Is Visible	search
	Wait Until Element Is Visible	search_mini_form
	#button to account management page
	Wait Until Element Is Visible	//*[@id="header-account"]/ul/li[1]/a
	#button to login page
	Wait Until Element Is Visible	//*[@id="header-account"]/ul/li[2]/a
	#button to compare
	Wait Until Element Is Visible	//*[@id="mini-compare"]/div[1]/span/span[2]
	#button to cart
	Wait Until Element Is Visible	//*[@id="mini-cart"]/a/span/span[2]
Looking for menubar
	#ETUSIVU
	Wait Until Element Is Visible	//*[@id="nav"]/li[4]/a/span
	#POSTIKORTIT YM PAINOTUOTTEET 
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	#YSTÄVÄNPÄIVÄ
	Wait Until Element Is Visible	//*[@id="nav"]/li[6]/a/span
	#KEVÄT
	Wait Until Element Is Visible	//*[@id="nav"]/li[7]/a/span
	#ADRESSIT
	Wait Until Element Is Visible	//*[@id="nav"]/li[8]/a/span
	#TUIKKUKYNTTILÄT
	Wait Until Element Is Visible	//*[@id="nav"]/li[9]/a/span
	#SERVIETIT 
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/a/span[1]
	#KUVASTOTILAUS
	Wait Until Element Is Visible	//*[@id="nav"]/li[11]/a/span
	#TOIMITUSEHDOT
	Wait Until Element Is Visible	//*[@id="nav"]/li[12]/a/span
	#TARJOUSTUOTTEET 
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/a/span[1]
	#PAINOTYÖT
	Wait Until Element Is Visible	//*[@id="nav"]/li[14]/a/span
Looking for footer
	#scoll down to bottom of page
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	#button to go to top of page
	Wait Until Element Is Visible		//*[@id="scroll-to-top"]	10
	#button to Sivukartta page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[1]/a
	#button to Hakusanat page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[2]/a  
	#button to Tarkennettu haku page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[3]/a  
	#button to Tilaukset page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[4]/a  
	#button to Ota meihin yhteyttä page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[5]/a 
	#Copyright
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[2]/div/div/div/div/div		© 2013 Postimyynti Anki Oy

Looking for footer without scroll
	#scoll down to bottom of page
	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
	#button to Sivukartta page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[1]/a
	#button to Hakusanat page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[2]/a  
	#button to Tarkennettu haku page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[3]/a  
	#button to Tilaukset page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[4]/a  
	#button to Ota meihin yhteyttä page
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[1]/div/div/div/div/ul/li[5]/a 
	#Copyright
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[3]/div/div/div[2]/div/div/div/div/div		© 2013 Postimyynti Anki Oy
	
	