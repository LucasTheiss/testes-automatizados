* Settings *
Library  SeleniumLibrary

*** Variables ***
${URL}      http://localhost/FuelWise/pages/gerente/viagens.php?idtransportadora=1
${BROWSER}      Chrome
${CAMPO_CARGA}      id:carga
${TERMO_CARGA}      malte
${CAMPO_PESO}       id:peso
${TERMO_PESO}       120
${CAMPO_OBS}        id:obs
${TERMO_OBS}        aaaaa
${CAMPO_ORIGEM}     name:enderecoOrigem
${TERMO_ORIGEM}     Rua Jóquei clube
${CAMPO_CORO}       name:coordenadasOrigem
${TERMO_CORO}       -25.4522174, -49.2534328
${CAMPO_DESTINO}        name:enderecoDestino
${TERMO_DESTINO}        rua professor becker
${CAMPO_CORD}       id:coordenadasDestino
${TERMO_CORD}       -25.3935087, -51.4591337
${SALVAR}       xpath=//button[text()='Salvar']
${RESULTADO}        Viagem cadastrada com sucesso

*** Keywords ***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Realizar o cadastro da viagem
    Select From List By Label    id:idusuario    daniel
    Select From List By Label    id:idveiculo    ayl7689-Mercedes
    Input Text  ${CAMPO_CARGA}  ${TERMO_CARGA}
    Input Text  ${CAMPO_PESO}  ${TERMO_PESO}
    Input Text  ${CAMPO_OBS}  ${TERMO_OBS}
    Input Text  ${CAMPO_ORIGEM}  ${TERMO_ORIGEM}
    Input Text  ${CAMPO_CORO}  ${TERMO_CORO}
    Input Text  ${CAMPO_DESTINO}  ${TERMO_DESTINO}
    Input Text  ${CAMPO_CORD}  ${TERMO_CORD}
    Click Button  ${SALVAR}  
    Wait Until Page Contains Element  id=nav-mobile

Verificar resultado da viagem
    Page Should Contain  ${RESULTADO}

Fechar o navegador
    Capture Page Screenshot 
    Close Browser