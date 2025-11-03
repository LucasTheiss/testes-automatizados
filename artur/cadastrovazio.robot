*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost/FuelWise/pages/cadastro_transportadora.php?page=1
${BROWSER}      Chrome
${CAMPO_EMPRESA}    name:nomeEmpresa
${TERMO_EMPRESA}    a
${CONTINUAR}        xpath=//button[text()='Continuar para Informações Pessoais']
${RESULTADO}        Falha ao fazer cadastro

*** Keywords ***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Realizar o cadastro
    Input Text  ${CAMPO_EMPRESA}  ${TERMO_EMPRESA}
    Click Button  ${CONTINUAR}  
    Wait Until Page Contains Element  id=nav-mobile

Verificar resultado do cadastro
    Page Should Contain  ${RESULTADO}

Fechar o navegador
    Capture Page Screenshot 
    Close Browser