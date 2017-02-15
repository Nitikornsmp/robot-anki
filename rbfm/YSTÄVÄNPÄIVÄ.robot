*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
YSTÄVÄNPÄIVÄ page
	Turn Anki site on 	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	//*[@id="nav"]/li[5]/a/span[1]
	Click Element	//*[@id="nav"]/li[6]/a/span
	Title Should Be		Anki :: Ystävänpäivä
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Ystävänpäivä
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 38 Kortti ystävälle
	Wait Until Element Contains 	//*[@id="product-price-73"]		0,20 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 33 Kortti ystävälle
	Wait Until Element Contains 	//*[@id="product-price-397"]		0,22 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Contains		${c3}	Nro 34 Korttilajitelma ystävälle
	Wait Until Element Contains 	//*[@id="product-price-70"]		0,18 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 36 Kortti ystävälle, kuvat Pia Mikkola
	Wait Until Element Contains 	//*[@id="product-price-529"]		0,16 €
	Wait Until Element Is Visible	${b4}

	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	No: 37 Kortti ystävälle
	Wait Until Element Contains 	//*[@id="product-price-72"]		0,16 €
	Wait Until Element Is Visible	${b5}

	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 39 Kortti ystävälle, pitkä malli
	Wait Until Element Contains 	//*[@id="product-price-530"]		0,16 €
	Wait Until Element Is Visible	${b6}

	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 40 Kortti ystävälle
	Wait Until Element Contains 	//*[@id="product-price-528"]		0,16 €
	Wait Until Element Is Visible	${b7}

	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 10030 Käsintehty 2-os kortti ystävälle
	Wait Until Element Contains 	//*[@id="product-price-477"]		1,50 €
	Wait Until Element Is Visible	${b8}

	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 132 Kortti ystävälle, kuvat Anna Rinne
	Wait Until Element Contains 	//*[@id="product-price-65"]		0,16 €
	Wait Until Element Is Visible	${b9}

	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 131 Kortti ystävälle, kuvat Mari Ohvo
	Wait Until Element Contains 	//*[@id="product-price-64"]		0,16 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	Nro 683 Tuikku ystävälle
	Wait Until Element Contains 	//*[@id="product-price-540"]		6,50 €
	Wait Until Element Is Visible	${b11}

	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Nro 682 Tuikku ystävälle
	Wait Until Element Contains 	//*[@id="product-price-539"]		6,50 €
	Wait Until Element Is Visible	${b12}

	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Nro 685 Tuikku ystävälle
	Wait Until Element Contains 	//*[@id="product-price-538"]		6,50 €
	Wait Until Element Is Visible	${b13}
	
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	No: 854 Askartelusetti (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-702"]		5,70 €
	Wait Until Element Is Visible	${b14}

	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	Nro 407 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-578"]		3,95 €
	Wait Until Element Is Visible	${b15}

	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	Nro 416 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-586"]		3,95 €
	Wait Until Element Is Visible	${b16}

	Wait Until Element Is Visible	${g17}
	Wait Until Element Contains		${c17}	Nro 418 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-588"]		3,95 €
	Wait Until Element Is Visible	${b17}

	Wait Until Element Is Visible	${g18}
	Wait Until Element Contains		${c18}	Nro 422 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-592"]		3,95 €
	Wait Until Element Is Visible	${b18}
	
	Wait Until Element Is Visible	${g19}
	Wait Until Element Contains		${c19}	Nro 457 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-601"]		2,95 €
	Wait Until Element Is Visible	${b19}

	Wait Until Element Is Visible	${g20}
	Wait Until Element Contains		${c20}	Nro 466 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-605"]		2,95 €
	Wait Until Element Is Visible	${b20}

	Wait Until Element Is Visible	${g21}
	Wait Until Element Contains		${c21}	Nro 468 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-607"]		2,95 €
	Wait Until Element Is Visible	${b21}

	Wait Until Element Is Visible	${g22}
	Wait Until Element Contains		${c22}	Runokirjanen - Ystävyyden hetkiä
	Wait Until Element Contains 	//*[@id="product-price-212"]		2,50 €
	Wait Until Element Is Visible	${b22}