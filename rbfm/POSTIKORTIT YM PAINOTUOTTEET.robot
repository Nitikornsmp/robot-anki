*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Mainpage
	Turn Anki site on	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]	
	Click Element	//*[@id="nav"]/li[5]/a/span[1]
	Title Should Be		Anki :: Postikortit ja muut painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#Title page
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div/h1		Postikortit ym Painotuotteet
	#looking for product grid
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]
	#looking for sidebar
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div
	Wait until element is visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[1]
	Wait until element is visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[2]
	Wait until element is visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[3]
	Wait until element is visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[4]
	Wait until element is visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[5]
	#looking for content
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[1]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[1]/a/div/span	Onnittelukortit
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[1]/a/div/img
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[2]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[2]/a/div/span	Muut kortit
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[2]/a/div/img
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[3]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[3]/a/div/span	Joulukortit 
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[3]/a/div/img
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[4]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[4]/a/div/span	Kortit ystävälle
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[4]/a/div/img
	Wait Until Element Is Visible 	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[5]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[5]/a/div/span	Kortin askartelu
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[5]/a/div/img
Joulukortit page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Click Element	//*[@id="nav"]/li[5]/ul/li[1]
	Title Should Be		Anki :: Joulukortit - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Joulukortit
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/h2		Nro 1 Joulukortti Pukkisarja
	Wait Until Element Contains		//*[@id="product-price-441"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/h2		Nro 2 Nostalginen joulukorttisarja
	Wait Until Element Contains		//*[@id="product-price-554"]/span		0,28 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/h2		Nro 3 Joulukortti Iloinen aihe
	Wait Until Element Contains		//*[@id="product-price-443"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/h2		Nro 4 Joulukortti lemmikit
	Wait Until Element Contains		//*[@id="product-price-557"]/span		0,20 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/h2		Nro 5 Joulukortti Valokuvamaisema
	Wait Until Element Contains		//*[@id="product-price-564"]/span		0,26 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/h2		Nro 6 Joulukortti Maisema, kuvat Jari Välkkynen
	Wait Until Element Contains		//*[@id="product-price-566"]/span		0,26 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/h2		Nro 7 Joulukortti Tunnelma
	Wait Until Element Contains		//*[@id="product-price-558"]/span		0,20 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/h2		Nro 8 Joulukortti Kynttiläaihe
	Wait Until Element Contains		//*[@id="product-price-567"]/span		0,26 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/h2		Nro 20010 Joulukortti Raamattuaihe
	Wait Until Element Contains		//*[@id="product-price-698"]/span		0,26 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/h2		Nro 10 Joulukortti Raamattuaihe
	Wait Until Element Contains		//*[@id="product-price-450"]/span		0,28 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/h2		Nro 11 Joulukorttilajitelma
	Wait Until Element Contains		//*[@id="product-price-451"]/span		0,18 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/h2		Nro 12 Korttimyyjän tarjouspaketti
	Wait Until Element Contains		//*[@id="product-price-452"]/span		85,00 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/h2		Nro 14 Joulukortti Koululaiskoko
	Wait Until Element Contains		//*[@id="product-price-453"]/span		0,09 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/h2		Nro 15 Joulukortti Koululaiskoko
	Wait Until Element Contains		//*[@id="product-price-454"]/span		0,09 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/h2		Nro 16 Anne Karlssonin enkelisarja
	Wait Until Element Contains		//*[@id="product-price-482"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/h2		Nro 19 Anne Karlssonin pukkisarja
	Wait Until Element Contains		//*[@id="product-price-547"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[17]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[17]/h2		Nro 20 Anne Karlssonin pupusarja
	Wait Until Element Contains		//*[@id="product-price-549"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[17]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[18]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[18]/h2		Nro 21 - 25 2-osainen joulukortti
	Wait Until Element Contains		//*[@id="product-price-458"]/span		1,09 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[18]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[19]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[19]/h2		Nro 26 - 27 Jouluevankeliumikortti
	Wait Until Element Contains		//*[@id="product-price-457"]/span		1,09 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[19]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[20]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[20]/h2		Nro 201 2-os kortin logopainatus
	Wait Until Element Contains		//*[@id="product-price-250"]/span		25,00 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[20]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[21]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[21]/h2		Nro 17 Joulupakettikortti
	Wait Until Element Contains		//*[@id="product-price-455"]/span		0,05 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[21]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[22]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[22]/h2		Nro 18 Joulupakettitarra
	Wait Until Element Contains		//*[@id="product-price-456"]/span		0,60 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[22]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[23]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[23]/h2		Nro 20001 Joulukortti Pukkisarja, (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-16"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[23]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[24]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[24]/h2		Nro 20002 Nostalginen joulukorttisarja (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-6"]/span		0,27 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[24]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[25]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[25]/h2		Nro 10004 Joulukortti lemmikit (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-444"]/span		0,19 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[25]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[26]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[26]/h2		Nro 10005 Joulukortti Valokuvamaisema (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-445"]/span		0,25 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[26]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[27]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[27]/h2		Nro 10006 Joulukortti Maisema, kuvat Jari Välkkynen (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-446"]/span		0,25 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[27]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[28]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[28]/h2		Nro 10007 Joulukortti Tunnelma (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-447"]/span		0,20 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[28]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[29]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[29]/h2		Nro 10008 Joulukortti Kynttiläaihe (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-448"]/span		0,25 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[29]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[30]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[30]/h2		Nro 10009 Joulukortti "On lapsi syntynyt" (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-449"]/span		0,20 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[30]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[31]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[31]/h2		Nro 28 Joulukortti Enkelit
	Wait Until Element Contains		//*[@id="product-price-20"]/span		0,14 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[31]/div[3]/button
Onnittelukortit main page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Click Element	//*[@id="nav"]/li[5]/ul/li[2]
	Title Should Be		Anki :: Onnittelukortit - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for sidebar
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[1]/a
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[2]/a
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Onnittelukortit
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/h2		Nro 53 Postikorttisarja eri tilanteisiin
	Wait Until Element Contains		//*[@id="product-price-663"]/span		0,24 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/h2		Nro 52 Mustavalkoinen korttisarja
	Wait Until Element Contains		//*[@id="product-price-149"]/span		0,22 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/h2		Nro 42 Onnittelu- / kukkakortti
	Wait Until Element Contains		//*[@id="product-price-90"]/span		0,20 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/h2		Nro 44 Onnittelukortti, kiiltopinta ja kultaus
	Wait Until Element Contains		//*[@id="product-price-102"]/span		0,26 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/h2		2-os onnittelukortti Pojalle
	Wait Until Element Contains		//*[@id="product-price-173"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/h2		2-os onnittelukortti Tytölle
	Wait Until Element Contains		//*[@id="product-price-176"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/h2		2-os Onnittelukortti Anne Karlsson
	Wait Until Element Contains		//*[@id="product-price-221"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/h2		No: 93 Käsintehty 2-os kukkakortti
	Wait Until Element Contains		//*[@id="product-price-235"]/span		1,90 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/h2		Nro 89 2-os onnittelukortti hengellisin tekstein
	Wait Until Element Contains		//*[@id="product-price-467"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/h2		Nro 88 2-os vuosikortti
	Wait Until Element Contains		//*[@id="product-price-468"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/h2		Nro 10084 2-os onnittelukortti
	Wait Until Element Contains		//*[@id="product-price-479"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/h2		Nro 84 2-os onnittelukortti
	Wait Until Element Contains		//*[@id="product-price-469"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/h2		2-osaiset kortit Äitienpäivään ja Isänpäivään
	Wait Until Element Contains		//*[@id="product-price-674"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/h2		2-os kortti Eläkkeelle siirtyvälle
	Wait Until Element Contains		//*[@id="product-price-673"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/h2		2-os kortti Kihlaparille, Hääparille, Onnea Uuteen kotiin
	Wait Until Element Contains		//*[@id="product-price-672"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/h2		2-osainen Onnittelukortti Ripille, Valmistuneelle, Ylioppilaalle
	Wait Until Element Contains		//*[@id="product-price-671"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[17]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[17]/h2		2-os onnittelukortit vauvoille
	Wait Until Element Contains		//*[@id="product-price-670"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[17]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[18]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[18]/h2		Nro 49 Onnittelukortti lapselle, kuvat Anna Rinne
	Wait Until Element Contains		//*[@id="product-price-462"]/span		0,18 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[18]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[19]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[19]/h2		Nro 47 Onnittelukortti lapselle
	Wait Until Element Contains		//*[@id="product-price-461"]/span		0,22 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[19]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[20]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[20]/h2		No: 58 Pääsiäiskortti, Siunattua Pääsiäistä
	Wait Until Element Contains		//*[@id="product-price-710"]/span		0,23 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[20]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[21]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[21]/h2		No: 54 Pääsiäiskortti
	Wait Until Element Contains		//*[@id="product-price-708"]/span		0,23 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[21]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[22]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[22]/h2		No: 841 A5-kokoinen onnittelukortti
	Wait Until Element Contains		//*[@id="product-price-470"]/span		2,80 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[22]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[23]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[23]/h2		Nro 91 Käsintehty 2-os onnittelukortti lapselle
	Wait Until Element Contains		//*[@id="product-price-460"]/span		1,90 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[23]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[24]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[24]/h2		No: 90 2-os pikkukortti 74 x 105 mm
	Wait Until Element Contains		//*[@id="product-price-232"]/span		0,50 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[24]/div[3]/button
	
	
Onnittelukortit-Postikortit page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[1]
	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[1]
	Title Should Be		Anki :: Postikortit onnitteluun - Onnittelukortit - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Postikortit onnitteluun
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/h2		No: 54 Pääsiäiskortti
	Wait Until Element Contains		//*[@id="product-price-708"]/span		0,23 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[1]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/h2		Nro 52 Mustavalkoinen korttisarja
	Wait Until Element Contains		//*[@id="product-price-149"]/span		0,22 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[2]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/h2		Nro 53 Postikorttisarja eri tilanteisiin
	Wait Until Element Contains		//*[@id="product-price-663"]/span		0,24 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/h2		No: 58 Pääsiäiskortti, Siunattua Pääsiäistä
	Wait Until Element Contains		//*[@id="product-price-710"]/span		0,23 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/h2		Nro 42 Onnittelu- / kukkakortti
	Wait Until Element Contains		//*[@id="product-price-90"]/span		0,20 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/h2		Nro 44 Onnittelukortti, kiiltopinta ja kultaus
	Wait Until Element Contains		//*[@id="product-price-102"]/span		0,26 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/h2		Nro 47 Onnittelukortti lapselle
	Wait Until Element Contains		//*[@id="product-price-461"]/span		0,22 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/h2		Nro 49 Onnittelukortti lapselle, kuvat Anna Rinne
	Wait Until Element Contains		//*[@id="product-price-462"]/span		0,18 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[3]/button
	
Onnittelukortit-2-osaiset page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Mouse Over	//*[@id="nav"]/li[5]/ul/li[2]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[2]
	Click Element	//*[@id="nav"]/li[5]/ul/li[2]/ul/li[2]
	Title Should Be		Anki :: 2-osaiset onnittelukortit - Onnittelukortit - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		2-osaiset onnittelukortit
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}		2-os onnittelukortti Pojalle
	Wait Until Element Contains		//*[@id="product-price-173"]/span		1,69 €
	Wait Until Element Is Visible	${b1}
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}		2-os onnittelukortti Tytölle
	Wait Until Element Contains		//*[@id="product-price-176"]/span		1,69 €
	Wait Until Element Is Visible	${b2}
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/h2		2-os onnittelukortit vauvoille
	Wait Until Element Contains		//*[@id="product-price-670"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[3]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/h2		2-osainen Onnittelukortti Ripille, Valmistuneelle, Ylioppilaalle
	Wait Until Element Contains		//*[@id="product-price-671"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[4]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/h2		2-os kortti Kihlaparille, Hääparille, Onnea Uuteen kotiin
	Wait Until Element Contains		//*[@id="product-price-672"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[5]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/h2		2-os kortti Eläkkeelle siirtyvälle
	Wait Until Element Contains		//*[@id="product-price-673"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[6]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/h2		2-osaiset kortit Äitienpäivään ja Isänpäivään
	Wait Until Element Contains		//*[@id="product-price-674"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[7]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/h2		Nro 84 2-os onnittelukortti
	Wait Until Element Contains		//*[@id="product-price-469"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[8]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/h2		Nro 10084 2-os onnittelukortti
	Wait Until Element Contains		//*[@id="product-price-479"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[9]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/h2		Nro 88 2-os vuosikortti
	Wait Until Element Contains		//*[@id="product-price-468"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[10]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/h2		Nro 89 2-os onnittelukortti hengellisin tekstein
	Wait Until Element Contains		//*[@id="product-price-467"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[11]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/h2		2-os Onnittelukortti Anne Karlsson
	Wait Until Element Contains		//*[@id="product-price-221"]/span		1,69 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[12]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/h2		No: 841 A5-kokoinen onnittelukortti
	Wait Until Element Contains		//*[@id="product-price-470"]/span		2,80 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[13]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/h2		No: 90 2-os pikkukortti 74 x 105 mm
	Wait Until Element Contains		//*[@id="product-price-232"]/span		0,50 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[14]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/h2		Nro 91 Käsintehty 2-os onnittelukortti lapselle
	Wait Until Element Contains		//*[@id="product-price-460"]/span		1,90 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[15]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/div[1]
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/h2		No: 93 Käsintehty 2-os kukkakortti
	Wait Until Element Contains		//*[@id="product-price-235"]/span		1,90 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]/ul/li[16]/div[3]/button
Kortit-ystävälle page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Click Element	//*[@id="nav"]/li[5]/ul/li[3]
	Title Should Be		Anki :: Kortit ystävälle - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Kortit ystävälle
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 38 Kortti ystävälle
	Wait Until Element Contains	//*[@id="product-price-73"]/span	0,20 €
	Wait Until Element Is Visible	${b1}
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 33 Kortti ystävälle
	Wait Until Element Contains	//*[@id="product-price-397"]/span	0,22 €
	Wait Until Element Is Visible	${b2}
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 36 Kortti ystävälle, kuvat Pia Mikkola
	Wait Until Element Contains	//*[@id="product-price-529"]/span	0,16 €
	Wait Until Element Is Visible	${b3}
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	No: 37 Kortti ystävälle
	Wait Until Element Contains	//*[@id="product-price-72"]/span	0,16 €
	Wait Until Element Is Visible	${b4}
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 39 Kortti ystävälle, pitkä malli
	Wait Until Element Contains	//*[@id="product-price-530"]/span	0,16 €
	Wait Until Element Is Visible	${b5}
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 40 Kortti ystävälle
	Wait Until Element Contains	//*[@id="product-price-528"]/span	0,16 €
	Wait Until Element Is Visible	${b6}
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 131 Kortti ystävälle, kuvat Mari Ohvo
	Wait Until Element Contains	//*[@id="product-price-64"]/span	0,16 €
	Wait Until Element Is Visible	${b7}
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 34 Korttilajitelma ystävälle
	Wait Until Element Contains	//*[@id="product-price-70"]/span	0,18 €
	Wait Until Element Is Visible	${b8}
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 132 Kortti ystävälle, kuvat Anna Rinne
	Wait Until Element Contains	//*[@id="product-price-65"]/span	0,16 €
	Wait Until Element Is Visible	${b9}
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 10030 Käsintehty 2-os kortti ystävälle
	Wait Until Element Contains	//*[@id="product-price-477"]/span	1,50 €
	Wait Until Element Is Visible	${b10}

Muut-kortit page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Click Element	//*[@id="nav"]/li[5]/ul/li[4]
	Title Should Be		Anki :: Muut kortit - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Muut kortit
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 51 Eläinaiheinen kortti
	Wait Until Element Contains	//*[@id="product-price-551"]/span	0,23 €
	Wait Until Element Is Visible	${b1}
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 10051 Eläinaiheinen kortti
	Wait Until Element Contains	//*[@id="product-price-395"]/span	0,20 €
	Wait Until Element Is Visible	${b2}
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 52 Mustavalkoinen korttisarja
	Wait Until Element Contains	//*[@id="product-price-149"]/span	0,22 €
	Wait Until Element Is Visible	${b3}
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 53 Postikorttisarja eri tilanteisiin
	Wait Until Element Contains	//*[@id="product-price-663"]/span	0,24 €
	Wait Until Element Is Visible	${b4}
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 42 Onnittelu- / kukkakortti
	Wait Until Element Contains	//*[@id="product-price-90"]/span	0,20 €
	Wait Until Element Is Visible	${b5}
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 48 Sekalainen postikorttisarja
	Wait Until Element Contains	//*[@id="product-price-128"]/span	0,18 €
	Wait Until Element Is Visible	${b6}
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 35 Terho Peltoniemen hupikortti
	Wait Until Element Contains	//*[@id="product-price-66"]/span	0,17 €
	Wait Until Element Is Visible	${b7}
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	No: 10043 Kukkakortti, Mari Laukkanen
	Wait Until Element Contains	//*[@id="product-price-466"]/span	0,14 €
	Wait Until Element Is Visible	${b8}
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 55 Pääsiäiskorttilajitelma
	Wait Until Element Contains	//*[@id="product-price-153"]/span	0,18 €
	Wait Until Element Is Visible	${b9}
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	No: 56 Pääsiäis- / kevätkortti kukka-aihe
	Wait Until Element Contains	//*[@id="product-price-154"]/span	0,25 €
	Wait Until Element Is Visible	${b10}
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	No: 57 Pääsiäis- / kevätkortti, kuvat Karin Holmström
	Wait Until Element Contains	//*[@id="product-price-416"]/span	0,25 €
	Wait Until Element Is Visible	${b11}
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	No: 83 2-osainen suruvalittelukortti
	Wait Until Element Contains	//*[@id="product-price-209"]/span	1,69 €
	Wait Until Element Is Visible	${b12}
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	No: 90 2-os pikkukortti 74 x 105 mm
	Wait Until Element Contains	//*[@id="product-price-232"]/span	0,50 €
	Wait Until Element Is Visible	${b13}
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	Nro 859 Pikkukortti pakettiin tai kukkakimppuun
	Wait Until Element Contains	//*[@id="product-price-471"]/span	3,95 €
	Wait Until Element Is Visible	${b14}
	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	2-osainen lahjakortti kirjekuorella
	Wait Until Element Contains	//*[@id="product-price-474"]/span	1,09 €
	Wait Until Element Is Visible	${b15}
	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	No: 58 Pääsiäiskortti, Siunattua Pääsiäistä
	Wait Until Element Contains	//*[@id="product-price-710"]/span	0,23 €
	Wait Until Element Is Visible	${b16}
	Wait Until Element Is Visible	${g17}
	Wait Until Element Contains		${c17}	No: 54 Pääsiäiskortti
	Wait Until Element Contains	//*[@id="product-price-708"]/span	0,23 €
	Wait Until Element Is Visible	${b17}
	Wait Until Element Is Visible	${g18}
	Wait Until Element Contains		${c18}	Nro 203 logo tms painatus lahjakorttiin
	Wait Until Element Contains	//*[@id="product-price-435"]/span	25,00 €
	Wait Until Element Is Visible	${b18}

Kortin-askartelu page
	Turn Anki site on	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Mouse Over		//*[@id="nav"]/li[5]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/ul	
	Click Element	//*[@id="nav"]/li[5]/ul/li[5]
	Title Should Be		Anki :: Kortin askartelu - Postikortit ym Painotuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1	Kortin askartelu
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[2]		Tarvikkeita korttien askarteluun
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[1]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[1]/h2		No: 856 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-502"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[1]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[2]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[2]/h2		No: 857 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-503"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[2]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[3]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[3]/h2		No: 851 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-699"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[3]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[4]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[4]/h2		No: 852 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-700"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[4]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[5]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[5]/h2		No: 853 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-701"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[5]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[6]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[6]/h2		No: 854 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-702"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[6]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[7]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[7]/h2		No: 855 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-703"]	5,70 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[7]/div[3]/button
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[8]/div[1]/a
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[8]/h2		No: 866 Miss Daisy postikorttien askartelusarja (Nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-705"]	2,90 €
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[3]/ul/li[8]/div[3]/button
	

	
	
	
	
	
	
	
	