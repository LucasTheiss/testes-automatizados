*** Settings ***
Resource    vars.robot
Library    SeleniumLibrary

*** Keywords ***
Preencher campos login
    [Arguments]    ${EMAIL}    ${SENHA}
    Input Text    id=email   ${EMAIL}
    Input Text    id=senha    ${SENHA}
    Click Button    css=.btn.primary
    Sleep    1s

Observar resultado 
    [Arguments]    ${RESULTADO}
    Wait Until Page Contains    ${RESULTADO}