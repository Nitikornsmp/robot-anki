*** Settings ***
Resource	resources/resource.robot
Resource	resources/header-footer.robot
Resource	resources/grid-variable.robot
Test Teardown	Close All Browsers
*** Test Cases ***
Mainpage
	Turn Anki site on	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/a/span[1]	
	Click Element	//*[@id="nav"]/li[10]/a/span[1]
	Title Should Be		Anki :: Servietit
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for sidebar
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div
	Wait until element is visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[4]/div/div[2]/ul/li[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Servietit
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 401 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-572"]		3,95 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 402 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-573"]		3,95 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 403 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-574"]		3,95 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 404 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-575"]		3,95 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 405 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-576"]		3,95 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 406 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-577"]		3,95 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 407 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-578"]		3,95 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 408 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-579"]		3,95 €
	Wait Until Element Is Visible	${b8}
	
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 409 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-580"]		3,95 €
	Wait Until Element Is Visible	${b9}
	
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 410 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-581"]		3,95 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	Nro 411 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-569"]		3,95 €
	Wait Until Element Is Visible	${b11}
	
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Nro 415 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-585"]		3,95 €
	Wait Until Element Is Visible	${b12}
	
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Nro 416 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-586"]		3,95 €
	Wait Until Element Is Visible	${b13}
	
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	Nro 417 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-587"]		3,95 €
	Wait Until Element Is Visible	${b14}
	
	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	Nro 418 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-588"]		3,95 €
	Wait Until Element Is Visible	${b15}
	
	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	Nro 419 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-589"]		3,95 €
	Wait Until Element Is Visible	${b16}
	
	Wait Until Element Is Visible	${g17}
	Wait Until Element Contains		${c17}	Nro 420 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-590"]		3,95 €
	Wait Until Element Is Visible	${b17}
	
	Wait Until Element Is Visible	${g18}
	Wait Until Element Contains		${c18}	Nro 421 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-591"]		3,95 €
	Wait Until Element Is Visible	${b18}
	
	Wait Until Element Is Visible	${g19}
	Wait Until Element Contains		${c19}	Nro 422 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-592"]		3,95 €
	Wait Until Element Is Visible	${b19}
	
	Wait Until Element Is Visible	${g20}
	Wait Until Element Contains		${c20}	Nro 424 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-594"]		3,95 €
	Wait Until Element Is Visible	${b20}
	
	Wait Until Element Is Visible	${g21}
	Wait Until Element Contains		${c21}	Nro 451 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-595"]		2,95 €
	Wait Until Element Is Visible	${b21}
	
	Wait Until Element Is Visible	${g22}
	Wait Until Element Contains		${c22}	Nro 452 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-596"]		2,95 €
	Wait Until Element Is Visible	${b22}
	
	Wait Until Element Is Visible	${g23}
	Wait Until Element Contains		${c23}	Nro 453 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-597"]		2,95 €
	Wait Until Element Is Visible	${b23}
	
	Wait Until Element Is Visible	${g24}
	Wait Until Element Contains		${c24}	Nro 454 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-598"]		2,95 €
	Wait Until Element Is Visible	${b24}
	
	Wait Until Element Is Visible	${g25}
	Wait Until Element Contains		${c25}	Nro 455 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-599"]		2,95 €
	Wait Until Element Is Visible	${b25}
	
	Wait Until Element Is Visible	${g26}
	Wait Until Element Contains		${c26}	Nro 456 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-600"]		2,95 €
	Wait Until Element Is Visible	${b26}
	
	Wait Until Element Is Visible	${g27}
	Wait Until Element Contains		${c27}	Nro 457 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-601"]		2,95 €
	Wait Until Element Is Visible	${b27}
	
	Wait Until Element Is Visible	${g28}
	Wait Until Element Contains		${c28}	Nro 458 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-602"]		2,95 €
	Wait Until Element Is Visible	${b28}
	
	Wait Until Element Is Visible	${g29}
	Wait Until Element Contains		${c29}	Nro 459 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-603"]		2,95 €
	Wait Until Element Is Visible	${b29}
	
	Wait Until Element Is Visible	${g30}
	Wait Until Element Contains		${c30}	Nro 460 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-604"]		2,95 €
	Wait Until Element Is Visible	${b30}
	
	Wait Until Element Is Visible	${g31}
	Wait Until Element Contains		${c31}	Nro 461 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-570"]		2,95 €
	Wait Until Element Is Visible	${b31}
	
	Wait Until Element Is Visible	${g32}
	Wait Until Element Contains		${c32}	Nro 466 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-605"]		2,95 €
	Wait Until Element Is Visible	${b32}
	
	
	Wait Until Element Is Visible	${g33}
	Wait Until Element Contains		${c33}	Nro 467 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-606"]		2,95 €
	Wait Until Element Is Visible	${b33}
	
	Wait Until Element Is Visible	${g34}
	Wait Until Element Contains		${c34}	Nro 468 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-607"]		2,95 €
	Wait Until Element Is Visible	${b34}
	
	Wait Until Element Is Visible	${g35}
	Wait Until Element Contains		${c35}	Nro 469 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-608"]		2,95 €
	Wait Until Element Is Visible	${b35}
	
	Wait Until Element Is Visible	${g36}
	Wait Until Element Contains		${c36}	Nro 470 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-609"]		2,95 €
	Wait Until Element Is Visible	${b36}
	
	Wait Until Element Is Visible	${g37}
	Wait Until Element Contains		${c37}	Nro 471 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-610"]		2,95 €
	Wait Until Element Is Visible	${b37}
	
	Wait Until Element Is Visible	${g38}
	Wait Until Element Contains		${c38}	Nro 475 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-611"]		2,95 €
	Wait Until Element Is Visible	${b38}
	
	Wait Until Element Is Visible	${g39}
	Wait Until Element Contains		${c39}	Nro 476 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-612"]		2,95 €
	Wait Until Element Is Visible	${b39}
	
	Wait Until Element Is Visible	${g40}
	Wait Until Element Contains		${c40}	Nro 477 Servietti 25x25 
	Wait Until Element Contains		//*[@id="product-price-613"]		2,95 €
	Wait Until Element Is Visible	${b40}
	
	Wait Until Element Is Visible	${g41}
	Wait Until Element Contains		${c41}	Nro 478 Servietti 25x25 
	Wait Until Element Contains		//*[@id="product-price-614"]		2,95 €
	Wait Until Element Is Visible	${b41}
	
	Wait Until Element Is Visible	${g42}
	Wait Until Element Contains		${c42}	Nro 431 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-682"]		3,95 €
	Wait Until Element Is Visible	${b42}
	
	Wait Until Element Is Visible	${g43}
	Wait Until Element Contains		${c43}	Nro 481 Servietti 25x25 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-683"]		2,95 €
	Wait Until Element Is Visible	${b43}
	
	Wait Until Element Is Visible	${g44}
	Wait Until Element Contains		${c44}	Nro 434 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-688"]		3,95 €
	Wait Until Element Is Visible	${b44}
	
	Wait Until Element Is Visible	${g45}
	Wait Until Element Contains		${c45}	Nro 484 Servietti 25x25 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-689"]		2,95 €
	Wait Until Element Is Visible	${b45}
	
	
	Wait Until Element Is Visible	${g46}
	Wait Until Element Contains		${c46}	Nro 435 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-691"]		3,95 €
	Wait Until Element Is Visible	${b46}
	
	Wait Until Element Is Visible	${g47}
	Wait Until Element Contains		${c47}	Nro 430 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-679"]		3,95 €
	Wait Until Element Is Visible	${b47}

Ruokaliinat 33 x 33
	Turn Anki site on 	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/a/span[1]	
	Mouse Over						//*[@id="nav"]/li[10]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/ul/li[1]
	Click Element					//*[@id="nav"]/li[10]/ul/li[1]
	Title Should Be					Anki :: Ruokaliinat 33 x 33 - Servietit
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Ruokaliinat 33 x 33
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 401 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-572"]		3,95 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 402 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-573"]		3,95 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 403 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-574"]		3,95 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 404 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-575"]		3,95 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 405 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-576"]		3,95 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 406 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-577"]		3,95 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 407 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-578"]		3,95 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 408 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-579"]		3,95 €
	Wait Until Element Is Visible	${b8}
	
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 409 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-580"]		3,95 €
	Wait Until Element Is Visible	${b9}
	
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 410 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-581"]		3,95 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	Nro 411 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-569"]		3,95 €
	Wait Until Element Is Visible	${b11}
	
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Nro 415 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-585"]		3,95 €
	Wait Until Element Is Visible	${b12}
	
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Nro 416 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-586"]		3,95 €
	Wait Until Element Is Visible	${b13}
	
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	Nro 417 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-587"]		3,95 €
	Wait Until Element Is Visible	${b14}
	
	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	Nro 418 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-588"]		3,95 €
	Wait Until Element Is Visible	${b15}
	
	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	Nro 419 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-589"]		3,95 €
	Wait Until Element Is Visible	${b16}
	
	Wait Until Element Is Visible	${g17}
	Wait Until Element Contains		${c17}	Nro 420 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-590"]		3,95 €
	Wait Until Element Is Visible	${b17}
	
	Wait Until Element Is Visible	${g18}
	Wait Until Element Contains		${c18}	Nro 421 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-591"]		3,95 €
	Wait Until Element Is Visible	${b18}
	
	Wait Until Element Is Visible	${g19}
	Wait Until Element Contains		${c19}	Nro 422 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-592"]		3,95 €
	Wait Until Element Is Visible	${b19}
	
	Wait Until Element Is Visible	${g20}
	Wait Until Element Contains		${c20}	Nro 424 Servietti 33x33
	Wait Until Element Contains		//*[@id="product-price-594"]		3,95 €
	Wait Until Element Is Visible	${b20}
	
	Wait Until Element Is Visible	${g21}
	Wait Until Element Contains		${c21}	Nro 435 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-691"]		3,95 €
	Wait Until Element Is Visible	${b21}
	
	Wait Until Element Is Visible	${g22}
	Wait Until Element Contains		${c22}	Nro 434 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-688"]		3,95 €
	Wait Until Element Is Visible	${b22}
	
	Wait Until Element Is Visible	${g23}
	Wait Until Element Contains		${c23}	Nro 431 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-682"]		3,95 €
	Wait Until Element Is Visible	${b23}
	
	Wait Until Element Is Visible	${g24}
	Wait Until Element Contains		${c24}	Nro 430 Servietti 33x33 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-679"]		3,95 €
	Wait Until Element Is Visible	${b24}

Kahviliinat 25 x 25
	Turn Anki site on 	${cr}
	#Access mainapage
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/a/span[1]	
	Mouse Over						//*[@id="nav"]/li[10]/a/span[1]
	Wait Until Element Is Visible	//*[@id="nav"]/li[10]/ul/li[2]
	Click Element					//*[@id="nav"]/li[10]/ul/li[2]
	Title Should Be					Anki :: Kahviliinat 25 x 25 - Servietit
	Looking for site header
	Looking for menubar
	Looking for footer
	#looking for breadcrumb
	Wait Until Element Is Visible	//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[1]
	#looking for content
	Wait Until Element Contains		//*[@id="root-wrapper"]/div/div/div[2]/div[2]/div/div[3]/div[1]/h1		Kahviliinat 25 x 25
	
	Wait Until Element Is Visible	${g1}
	Wait Until Element Contains		${c1}	Nro 451 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-595"]		2,95 €
	Wait Until Element Is Visible	${b1}
	
	Wait Until Element Is Visible	${g2}
	Wait Until Element Contains		${c2}	Nro 452 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-596"]		2,95 €
	Wait Until Element Is Visible	${b2}
	
	Wait Until Element Is Visible	${g3}
	Wait Until Element Contains		${c3}	Nro 453 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-597"]		2,95 €
	Wait Until Element Is Visible	${b3}
	
	Wait Until Element Is Visible	${g4}
	Wait Until Element Contains		${c4}	Nro 454 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-598"]		2,95 €
	Wait Until Element Is Visible	${b4}
	
	Wait Until Element Is Visible	${g5}
	Wait Until Element Contains		${c5}	Nro 455 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-599"]		2,95 €
	Wait Until Element Is Visible	${b5}
	
	Wait Until Element Is Visible	${g6}
	Wait Until Element Contains		${c6}	Nro 456 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-600"]		2,95 €
	Wait Until Element Is Visible	${b6}
	
	Wait Until Element Is Visible	${g7}
	Wait Until Element Contains		${c7}	Nro 457 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-601"]		2,95 €
	Wait Until Element Is Visible	${b7}
	
	Wait Until Element Is Visible	${g8}
	Wait Until Element Contains		${c8}	Nro 458 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-602"]		2,95 €
	Wait Until Element Is Visible	${b8}
	
	Wait Until Element Is Visible	${g9}
	Wait Until Element Contains		${c9}	Nro 459 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-603"]		2,95 €
	Wait Until Element Is Visible	${b9}
	
	Wait Until Element Is Visible	${g10}
	Wait Until Element Contains		${c10}	Nro 460 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-604"]		2,95 €
	Wait Until Element Is Visible	${b10}
	
	Wait Until Element Is Visible	${g11}
	Wait Until Element Contains		${c11}	Nro 461 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-570"]		2,95 €
	Wait Until Element Is Visible	${b11}
	
	Wait Until Element Is Visible	${g12}
	Wait Until Element Contains		${c12}	Nro 466 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-605"]		2,95 €
	Wait Until Element Is Visible	${b12}
	
	Wait Until Element Is Visible	${g13}
	Wait Until Element Contains		${c13}	Nro 467 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-606"]		2,95 €
	Wait Until Element Is Visible	${b13}
	
	Wait Until Element Is Visible	${g14}
	Wait Until Element Contains		${c14}	Nro 468 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-607"]		2,95 €
	Wait Until Element Is Visible	${b14}
	
	Wait Until Element Is Visible	${g15}
	Wait Until Element Contains		${c15}	Nro 469 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-608"]		2,95 €
	Wait Until Element Is Visible	${b15}
	
	Wait Until Element Is Visible	${g16}
	Wait Until Element Contains		${c16}	Nro 470 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-609"]		2,95 €
	Wait Until Element Is Visible	${b16}
	
	Wait Until Element Is Visible	${g17}
	Wait Until Element Contains		${c17}	Nro 471 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-610"]		2,95 €
	Wait Until Element Is Visible	${b17}
	
	Wait Until Element Is Visible	${g18}
	Wait Until Element Contains		${c18}	Nro 475 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-611"]		2,95 €
	Wait Until Element Is Visible	${b18}
	
	Wait Until Element Is Visible	${g19}
	Wait Until Element Contains		${c19}	Nro 476 Servietti 25x25
	Wait Until Element Contains		//*[@id="product-price-612"]		2,95 €
	Wait Until Element Is Visible	${b19}
	
	Wait Until Element Is Visible	${g20}
	Wait Until Element Contains		${c20}	Nro 477 Servietti 25x25 
	Wait Until Element Contains		//*[@id="product-price-613"]		2,95 €
	Wait Until Element Is Visible	${b20}
	
	Wait Until Element Is Visible	${g21}
	Wait Until Element Contains		${c21}	Nro 478 Servietti 25x25 
	Wait Until Element Contains		//*[@id="product-price-614"]		2,95 €
	Wait Until Element Is Visible	${b21}
	
	Wait Until Element Is Visible	${g23}
	Wait Until Element Contains		${c23}	Nro 481 Servietti 25x25 (nettikauppatuote)
	Wait Until Element Contains		//*[@id="product-price-683"]		2,95 €
	Wait Until Element Is Visible	${b23}
	

	
