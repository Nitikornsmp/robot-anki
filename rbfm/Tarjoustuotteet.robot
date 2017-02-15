*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Mainpage
	Turn Anki site on	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/a/span[1]	
	Click Element	//*[@id="nav"]/li[13]/a/span[1]
	Title Should Be		Anki :: Tarjoustuotteet
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for sidebar
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[1]	Lahjatarjoukset
	Wait until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[2]	Korttitarjoukset
	Wait until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[3]	Askartelutarvikkeet
	Wait until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[4]	Runokirjaset
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Tarjoustuotteet
	
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[1]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[1]/a/div/span	Lahjatarjoukset 
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[1]/a/div/img
	
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[2]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[2]/a/div/span	Korttitarjoukset 
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[2]/a/div/img
	
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[3]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[3]/a/div/span	Runokirjaset 
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[3]/a/div/img
	
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[4]/a/img
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[4]/a/div/span	Askartelutarvikkeet 
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/ul/li[4]/a/div/img

Lahjatarjoukset
	Turn Anki site on	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/a/span[1]	
	Mouse Over	//*[@id="nav"]/li[13]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/ul/li[1]
	Click Element	//*[@id="nav"]/li[13]/ul/li[1]
	Title Should Be		Anki :: Lahjatarjoukset - Tarjoustuotteet
	Looking for site header
	Looking for menubar
	Looking for footer without scroll
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Lahjatarjoukset
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	No: 866 Varjostinsetti
	Wait Until Element Contains 	//*[@id="product-price-91"]		2,95 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Uunikinnas "Reilu"
	Wait Until Element Contains 	//*[@id="product-price-287"]		3,95 €
	Wait Until Element Is Visible	${b2}
	
Korttitarjoukset
	Turn Anki site on	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/a/span[1]	
	Mouse Over	//*[@id="nav"]/li[13]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/ul/li[2]
	Click Element	//*[@id="nav"]/li[13]/ul/li[2]
	Title Should Be		Anki :: Korttitarjoukset - Tarjoustuotteet
	Looking for site header
	Looking for menubar
	Looking for footer 
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Korttitarjoukset
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 12 Korttimyyjän tarjouspaketti
	Wait Until Element Contains 	//*[@id="product-price-452"]		85,00 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 49 Onnittelukortti lapselle, kuvat Anna Rinne
	Wait Until Element Contains 	//*[@id="product-price-462"]		0,18 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	No: 10043 Kukkakortti, Mari Laukkanen
	Wait Until Element Contains 	//*[@id="product-price-466"]		0,14 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 132 Kortti ystävälle, kuvat Anna Rinne
	Wait Until Element Contains 	//*[@id="product-price-65"]		0,16 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 131 Kortti ystävälle, kuvat Mari Ohvo
	Wait Until Element Contains 	//*[@id="product-price-64"]		0,16 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 35 Terho Peltoniemen hupikortti
	Wait Until Element Contains 	//*[@id="product-price-66"]		0,17 €
	Wait Until Element Is Visible	${b6}
	
	
	
	
	
	
	
	
Askartelutarvikkeet
	Turn Anki site on	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/a/span[1]	
	Mouse Over	//*[@id="nav"]/li[13]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/ul/li[3]
	Click Element	//*[@id="nav"]/li[13]/ul/li[3]
	Title Should Be		Anki :: Askartelutarvikkeet - Tarjoustuotteet
	Looking for site header
	Looking for menubar
	Looking for footer 
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Askartelutarvikkeet
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	No: 856 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-502"]		5,70 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	No: 857 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-503"]		5,70 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	No: 851 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-699"]		5,70 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	No: 852 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-700"]		5,70 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	No: 853 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-701"]		5,70 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	No: 854 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-702"]		5,70 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	No: 855 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-703"]		5,70 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	No: 866 Miss Daisy postikorttien askartelusarja (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-705"]		2,90 €
	Wait Until Element Is Visible	${b8}
Runokirjaset
	Turn Anki site on	${cr}
	#Access Runokirjaset apage
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/a/span[1]	
	Mouse Over	//*[@id="nav"]/li[13]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[13]/ul/li[4]
	Click Element	//*[@id="nav"]/li[13]/ul/li[4]
	Title Should Be		Anki :: Runokirjaset - Tarjoustuotteet
	Looking for site header
	Looking for menubar
	Looking for footer 
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Runokirjaset
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 931u Runokirjanen Ei ole täällä mitään pysyvää_v2 TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-523"]		2,50 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 931r Runokirjanen ..Ja suurin kaikista... TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-520"]		2,50 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 931p Runokirjanen Kiitos TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-518"]		2,50 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 931m Runokirjanen Kukkikoon elämäsi kukka TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-515"]		2,50 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 931l Runokirjanen Olkoon onni osanasi TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-514"]		2,50 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 931k Runokirjanen Onni on matka TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-513"]		2,50 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 931i Runokirjanen Säkeitä syntymäpäivänä TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-511"]		2,50 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 931h Runokirjanen Säkeitä syntymäpäivänä TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-510"]		2,50 €
	Wait Until Element Is Visible	${b8}
	
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 931e Runokirjanen On metsä täynnä loruja TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-507"]		2,50 €
	Wait Until Element Is Visible	${b9}
	
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 931d Runokirjanen Pidä hellästi huomassas TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-506"]		2,50 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	Nro 931c Runokirjanen Vauva tulee taloon TARJOUS
	Wait Until Element Contains 	//*[@id="product-price-505"]		2,50 €
	Wait Until Element Is Visible	${b11}
	
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Runokirjanen - Äideistä parhain
	Wait Until Element Contains 	//*[@id="product-price-214"]		2,50 €
	Wait Until Element Is Visible	${b12}
		
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Runokirjanen - Ystävyyden hetkiä
	Wait Until Element Contains 	//*[@id="product-price-212"]		2,50 €
	Wait Until Element Is Visible	${b13}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	