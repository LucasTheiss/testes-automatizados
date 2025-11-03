*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost/FuelWise/pages/adm/solicitacoes.php
${BROWSER}      Chrome
${BOTAO_APROVAR}        xpath=//a[contains(text(), 'Aprovar')]
${SIM}      xpath=//a[contains(text(), 'Sim tenho certeza')]
${RESULTADO}        Falha ao aprovar nova transportadora

*** Keywords ***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Realizar o cadastro com cnpj repetido
    Click Button  ${BOTAO_APROVAR}
    Click Button  ${SIM}
    Wait Until Page Contains Element  id=nav-mobile

Verificar resultado do cadastro com cnpj repetido
    Page Should Contain  ${RESULTADO}

Fechar o navegador
    Capture Page Screenshot 
    Close Browser