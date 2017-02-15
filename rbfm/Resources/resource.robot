*** Settings ***
Library           Selenium2Library
Library           OperatingSystem

#Library           Builtin


*** Variables ***
${ff}		firefox
${cr}		chrome
${sf}		safari
*** Keywords ***
Turn Anki site on
	[Arguments] 	@{browser}
    Open Browser   http://anki.fi/    @{browser}
	Maximize Browser Window
	Wait Until Element Is Visible	top
	Wait Until Element Is Visible	nav
	