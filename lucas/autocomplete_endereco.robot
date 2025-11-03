*** Settings ***
Library    SeleniumLibrary
Resource    vars.robot

*** Keywords ***
Preencher endereço valido
    [Arguments]    ${ENDERECO_VALIDO_ORIGEM}    ${ENDERECO_VALIDO_DESTINO}
    Go To    ${URL_VIAGENS}
    Click Button    css=.btn.primary
    Wait Until Page Contains    Coordenadas do destino
    Input Text    id=enderecoOrigem    ${ENDERECO_VALIDO_ORIGEM}
    Sleep    1s
    Press Keys    None    TAB
    Sleep    5s
    Input Text    id=enderecoDestino    ${ENDERECO_VALIDO_DESTINO}
    Sleep    1s
    Press Keys    None    TAB
    Sleep    5s

Observar resultado autocomplete
    Textfield Should Contain     id=coordenadasOrigem    .
    Textfield Should Contain     id=coordenadasDestino    .
