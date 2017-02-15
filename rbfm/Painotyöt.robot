*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Painotyöt page
	Turn Anki site on 	${cr}
	#Access Painotyöt page
	Wait Until Element Is Visible	nav
	Click Element	//*[@id="nav"]/li[14]/a/span
	Title Should Be		Anki :: Painotyöt
	Looking for site header
	Looking for menubar
	Looking for footer 
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Painotyöt
	
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li/h2/a	Kortit omista kuvistasi
	Wait Until Element Contains		//*[@id="product-price-707"]		0,00 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li/div[3]/button
	