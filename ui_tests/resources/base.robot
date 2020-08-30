***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o Selenium é importado daqui

Library     SeleniumLibrary
Library     RequestsLibrary
Library     OperatingSystem

Resource    kws.robot
Resource    element.robot

***Variables***
${base_url}     http://automationpractice.com/index.php?controller=authentication&back=my-account
${Browser}      chrome


***Keywords***
## Hooks
Open Session
    Open Browser    about:blank     ${Browser}
 
Close Session
    Capture Page Screenshot
    Close Browser
