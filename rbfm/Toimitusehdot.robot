*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Toimitusehdot page
	Turn Anki site on 	${cr}
	#Access Kuvastotilaus page
	Wait Until Element Is Visible	nav
	Click Element	//*[@id="nav"]/li[12]/a/span
	Title Should Be		Anki :: Toimitusehdot
	Looking for site header
	Looking for menubar
	Looking for footer without scroll
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Toimitusehdot
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[1]		Tilauksesi lähetetään postin kuljetettavaksi 1-3 työpäivän kuluessa. Loka-Marraskuun sesongin aikana toimitusaika voi olla noin 1 viikko. Pienet tilaukset lähetämme kirjeenä tai ns. pienlähetyksenä, jotka tuodaan postilaatikkoosi. Isommat lähetykset lähetämme postipakettina, joka noudetaan postista. Ilmoita meille sähköpostilla 
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[2]		Toimituskulut kotimaassa ovat vain 4,96 € / tilaus.
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[3]		Maksutavaksi voit valita joko verkkomaksun tai maksun laskua vastaan.
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[4]		Mikäli olet tilannut Ankilta aiemminkin ja tilaajanimellä ei ole maksuhäiriöitä, on käytössäsi maksaminen lähetyksen mukana seuraavalla laskulla. Myös yritykset ja yhteisöt, joiden luottotiedot on vapaasti tarkistettavissa, voivat valita maksutavaksi laskutuksen. Postimyynti Anki pidättää itsellään oikeuden valita maksutavaksi laskutuksen sijaan ennakkomaksun.
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[5]		Tuotteilla on 14 pv palautusoikeus lähetyksen vastaanottopäivästä alkaen. Palautukset tulee tehdä ns. Asiakaspalautuksena. Ohjeet siihen saatte omasta postitoimipaikastanne.
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[6]		Postimyynti Anki Oy on Suomen vanhin postimyyntiliike, perustettu 29.4.1931
	
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[7]		Yhteystiedot:
	
#	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/p[8]		<p>Toimitusvarasto Syylärikatu 3 ovi 8, 37150 Nokia <br>p. 03-2656165 <br>anki@anki.fi <br>Y0989502-3</p>