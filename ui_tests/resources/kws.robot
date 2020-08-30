***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação dos comportamentos

***Keywords***  
Given I access the main page
    Go To   ${base_url}
    Wait Until Element is visible       ${LOGIN_FORM}   50
    
    

When I submit my email ${email}  
    Input Text                             ${EMAIL_FIELD}           ${email}
     
And I submit my password ${password}     
   Input Text                              ${PASSWORD_FIELD}       ${password}     


And I click in "Sign in" button
    Click Element                           ${SIGNIN_BUTTON}
   
Then I should see my account
    Wait Until Element is visible        ${DIV_ROW}              50


