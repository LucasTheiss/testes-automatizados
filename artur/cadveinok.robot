* Settings *
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost/FuelWise/pages/gerente/veiculos.php?idtransportadora=1
${BROWSER}      Chrome
${BTN}      xpath=//button[text()='Adicionar novo integrante']
${CAMPO_PLACA}      id:placa
${TERMO_PLACA}      ayl7689
${CAMPO_MODELO}     id:modelo
${TERMO_MODELO}     Mercedes
${CAMPO_EIXOS}      id:eixos
${TERMO_EIXOS}      4
${CAMPO_LITRAGEM}       id:litragem
${TERMO_LITRAGEM}       aaaa
${SALVAR}       xpath=//button[text()='Salvar']
${RESULTADO}        Valor de Litragem inválido

*** Keywords ***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Realizar o cadastro de veiculo litragem incorreta
    Click Button  ${BTN} 
    Capture Page Screenshot         prints/clicou_adicionar.png
    Input Text  ${CAMPO_PLACA}  ${TERMO_PLACA}
    Input Text  ${CAMPO_MODELO}  ${TERMO_MODELO}
    Input Text  ${CAMPO_EIXOS}  ${TERMO_EIXOS}
    Input Text  ${CAMPO_LITRAGEM}  ${TERMO_LITRAGEM}
    Capture Page Screenshot         prints/preencheu_veiculo.png
    Click Button  ${SALVAR}  
    Capture Page Screenshot         prints/clicou_salvar.png
    Wait Until Page Contains Element  id=nav-mobile

Verificar resultado do cadastro
    Page Should Contain  ${RESULTADO}
    Capture Page Screenshot         prints/resultado.png

Fechar o navegador
    Capture Page Screenshot 
    Close Browser
    