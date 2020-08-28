***Settings***
Documentation       Login do usuario
...                 Sendo que eu já efetuei o meu cadastro completo
...                 Quero logar no site com email e senha corretos
...                 Para efetuar compras de vestidos e blusas

Library     SeleniumLibrary
Library     RequestsLibrary
Library     OperatingSystem




***Variables***
${Browser}      chrome
${base_url}     http://automationpractice.com/index.php
${LOGIN_FORM}       class:box
${email}        bruna.mec51@yahoo.com.br
${password}     548407 
${EMAIL_FIELD}      id: email
${PASSWORD_FIELD}   id: passwd
${SIGNIN_BUTTON}     css:button[type=submit]
${DIV_ROW}             class:row


***Keywords***  
Given I access the main page 
    Open Browser    ${base_url}       ${Browser}
    Wait Until Element is visible       ${LOGIN_FORM}   15
       
  
When I submit my email  "${email}"
    Input Text                             ${EMAIL_FIELD}           ${email}
        
When I submit my password ${password}
   Input Text                              ${PASSWORD_FIELD}       ${password}

And I click in "Sign in" button
    Click Element                           ${SIGNIN_BUTTON}
   
Then I should see my account
    Wait Until Element is visible        ${DIV_ROW}              5 

Test Teardown  
    Capture Page Screenshot
    Close Session
