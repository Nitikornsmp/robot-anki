*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Tuikkukynttilät page
	Turn Anki site on 	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	nav
	Click Element	//*[@id="nav"]/li[9]/a/span
	Title Should Be		Anki :: Tuikkukynttilät
	Looking for site header
	Looking for menubar
	Looking for footer 
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Tuikkukynttilät
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 651 - 677 Tuikkukynttilä värillinen
	Wait Until Element Contains 	//*[@id="product-price-473"]		6,50 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 685 Tuikku ystävälle
	Wait Until Element Contains 	//*[@id="product-price-538"]		6,50 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 682 Tuikku ystävälle
	Wait Until Element Contains 	//*[@id="product-price-539"]		6,50 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 683 Tuikku ystävälle
	Wait Until Element Contains 	//*[@id="product-price-540"]		6,50 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 684 Keväinen tuikkusetti
	Wait Until Element Contains 	//*[@id="product-price-544"]		6,50 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 681 Lila tuikku, mieto kukkais tuoksu
	Wait Until Element Contains 	//*[@id="product-price-526"]		6,50 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 686 Syksyinen tuikkusetti 1
	Wait Until Element Contains 	//*[@id="product-price-693"]		6,50 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 687 Syksyinen tuikkusetti 2
	Wait Until Element Contains 	//*[@id="product-price-694"]		6,50 €
	Wait Until Element Is Visible	${b8}
		
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 680 Joulunpunainen tuikku, mieto joulun tuoksu
	Wait Until Element Contains 	//*[@id="product-price-524"]		6,50 €
	Wait Until Element Is Visible	${b9}
	
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 693 Suomi 100v -juhlatuikkusetti
	Wait Until Element Contains 	//*[@id="product-price-715"]		6,50 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	Nro 692 Suomi 100v -juhlatuikkusetti
	Wait Until Element Contains 	//*[@id="product-price-714"]		6,50 €
	Wait Until Element Is Visible	${b11}
	
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Nro 691 Keväinen tuikkusetti
	Wait Until Element Contains 	//*[@id="product-price-713"]		6,50 €
	Wait Until Element Is Visible	${b12}
	
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Nro 690 Jouluinen tuikkusetti 3
	Wait Until Element Contains 	//*[@id="product-price-697"]		6,50 €
	Wait Until Element Is Visible	${b13}
	
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	Nro 689 Jouluinen tuikkusetti 2
	Wait Until Element Contains 	//*[@id="product-price-696"]		6,50 €
	Wait Until Element Is Visible	${b14}
	
	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	Nro 688 Jouluinen tuikkusetti 1
	Wait Until Element Contains 	//*[@id="product-price-695"]		6,50 €
	Wait Until Element Is Visible	${b15}
	
	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	No: 866 Varjostinsetti
	Wait Until Element Contains 	//*[@id="product-price-91"]		2,95 €
	Wait Until Element Is Visible	${b16}