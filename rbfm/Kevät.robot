*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Kevät page
	Turn Anki site on 	${cr}
	#Access Joulukortit page
	Wait Until Element Is Visible	nav
	Click Element	//*[@id="nav"]/li[7]/a/span
	Title Should Be		Anki :: Kevät
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Kevät
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 691 Keväinen tuikkusetti
	Wait Until Element Contains 	//*[@id="product-price-713"]		6,50 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 684 Keväinen tuikkusetti
	Wait Until Element Contains 	//*[@id="product-price-544"]		6,50 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	2-os kortti Kihlaparille, Hääparille, Onnea Uuteen kotiin
	Wait Until Element Contains 	//*[@id="product-price-672"]		1,69 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	2-osaiset kortit Äitienpäivään ja Isänpäivään
	Wait Until Element Contains 	//*[@id="product-price-674"]		1,69 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	2-osainen Onnittelukortti Ripille, Valmistuneelle, Ylioppilaalle
	Wait Until Element Contains 	//*[@id="product-price-671"]		1,69 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	No: 54 Pääsiäiskortti
	Wait Until Element Contains 	//*[@id="product-price-708"]		0,23 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	No: 58 Pääsiäiskortti, Siunattua Pääsiäistä
	Wait Until Element Contains 	//*[@id="product-price-710"]		0,23 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	No: 57 Pääsiäis- / kevätkortti, kuvat Karin Holmström
	Wait Until Element Contains 	//*[@id="product-price-416"]		0,25 €
	Wait Until Element Is Visible	${b8}
	
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	No: 56 Pääsiäis- / kevätkortti kukka-aihe
	Wait Until Element Contains 	//*[@id="product-price-154"]		0,25 €
	Wait Until Element Is Visible	${b9}
	
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 44 Onnittelukortti, kiiltopinta ja kultaus
	Wait Until Element Contains 	//*[@id="product-price-102"]		0,26 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	No: 866 Miss Daisy postikorttien askartelusarja (Nettikauppatuote)
	Wait Until Element Contains 	//*[@id="product-price-705"]		2,90 €
	Wait Until Element Is Visible	${b11}
	
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Nro 53 Postikorttisarja eri tilanteisiin
	Wait Until Element Contains 	//*[@id="product-price-663"]		0,24 €
	Wait Until Element Is Visible	${b12}
	
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Nro 10084 2-os onnittelukortti
	Wait Until Element Contains 	//*[@id="product-price-479"]		1,69 €
	Wait Until Element Is Visible	${b13}
	
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	Nro 84 2-os onnittelukortti
	Wait Until Element Contains 	//*[@id="product-price-469"]		1,69 €
	Wait Until Element Is Visible	${b14}
	
	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	No: 10043 Kukkakortti, Mari Laukkanen
	Wait Until Element Contains 	//*[@id="product-price-466"]		0,14 €
	Wait Until Element Is Visible	${b15}
	
	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	2-os Onnittelukortti Anne Karlsson
	Wait Until Element Contains 	//*[@id="product-price-221"]		1,69 €
	Wait Until Element Is Visible	${b16}
	
	Wait Until Element Is Visible	${g17}
	Wait Until Element Contains		${c17}	Nro 42 Onnittelu- / kukkakortti
	Wait Until Element Contains 	//*[@id="product-price-90"]		0,20 €
	Wait Until Element Is Visible	${b17}
	
	Wait Until Element Is Visible	${g18}
	Wait Until Element Contains		${c18}	Nro 478 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-614"]		2,95 €
	Wait Until Element Is Visible	${b18}
	
	Wait Until Element Is Visible	${g19}
	Wait Until Element Contains		${c19}	Nro 471 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-610"]		2,95 €
	Wait Until Element Is Visible	${b19}
	
	Wait Until Element Is Visible	${g20}
	Wait Until Element Contains		${c20}	Nro 470 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-609"]		2,95 €
	Wait Until Element Is Visible	${b20}
	
	Wait Until Element Is Visible	${g21}
	Wait Until Element Contains		${c21}	Nro 408 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-579"]		3,95 €
	Wait Until Element Is Visible	${b21}
	
	Wait Until Element Is Visible	${g22}
	Wait Until Element Contains		${c22}	Nro 409 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-580"]		3,95 €
	Wait Until Element Is Visible	${b22}
	
	Wait Until Element Is Visible	${g23}
	Wait Until Element Contains		${c23}	Nro 410 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-581"]		3,95 €
	Wait Until Element Is Visible	${b23}
	
	Wait Until Element Is Visible	${g24}
	Wait Until Element Contains		${c24}	Nro 416 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-586"]		3,95 €
	Wait Until Element Is Visible	${b24}
	
	Wait Until Element Is Visible	${g25}
	Wait Until Element Contains		${c25}	Nro 417 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-587"]		3,95 €
	Wait Until Element Is Visible	${b25}
	
	Wait Until Element Is Visible	${g26}
	Wait Until Element Contains		${c26}	Nro 418 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-588"]		3,95 €
	Wait Until Element Is Visible	${b26}
	
	Wait Until Element Is Visible	${g27}
	Wait Until Element Contains		${c27}	Nro 419 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-589"]		3,95 €
	Wait Until Element Is Visible	${b27}

	Wait Until Element Is Visible	${g28}
	Wait Until Element Contains		${c28}	Nro 420 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-590"]		3,95 €
	Wait Until Element Is Visible	${b28}
	
	Wait Until Element Is Visible	${g29}
	Wait Until Element Contains		${c29}	Nro 421 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-591"]		3,95 €
	Wait Until Element Is Visible	${b29}
	
	Wait Until Element Is Visible	${g30}
	Wait Until Element Contains		${c30}	Nro 422 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-592"]		3,95 €
	Wait Until Element Is Visible	${b30}
	
	Wait Until Element Is Visible	${g31}
	Wait Until Element Contains		${c31}	Nro 457 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-601"]		2,95 €
	Wait Until Element Is Visible	${b31}
	
	Wait Until Element Is Visible	${g32}
	Wait Until Element Contains		${c32}	Nro 458 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-602"]		2,95 €
	Wait Until Element Is Visible	${b32}
	
	Wait Until Element Is Visible	${g33}
	Wait Until Element Contains		${c33}	Nro 459 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-603"]		2,95 €
	Wait Until Element Is Visible	${b33}
	
	Wait Until Element Is Visible	${g34}
	Wait Until Element Contains		${c34}	Nro 460 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-604"]		2,95 €
	Wait Until Element Is Visible	${b34}
	
	Wait Until Element Is Visible	${g35}
	Wait Until Element Contains		${c35}	Nro 467 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-606"]		2,95 €
	Wait Until Element Is Visible	${b35}
	
	Wait Until Element Is Visible	${g36}
	Wait Until Element Contains		${c36}	Nro 468 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-607"]		2,95 €
	Wait Until Element Is Visible	${b36}
	
	Wait Until Element Is Visible	${g37}
	Wait Until Element Contains		${c37}	Nro 469 Servietti 25x25
	Wait Until Element Contains 	//*[@id="product-price-608"]		2,95 €
	Wait Until Element Is Visible	${b37}
	
	Wait Until Element Is Visible	${g38}
	Wait Until Element Contains		${c38}	Nro 407 Servietti 33x33
	Wait Until Element Contains 	//*[@id="product-price-578"]		3,95 €
	Wait Until Element Is Visible	${b38}


