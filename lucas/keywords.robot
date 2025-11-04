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

Abrir o navegador
    [Arguments]    ${URL}
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot 
    Close Browser

Cadastrar novo funcionario
    [Arguments]    ${NOME_FUNCIONARIO}    ${EMAIL_FUNCIONARIO}    ${SENHA_FUNCIONARIO}    ${TELEFONE_FUNCIONARIO}    ${CPF_FUNCIONARIO}
    Go To    ${URL_INTEGRANTES}
    Wait Until Element Is Enabled    css=.btn.primary
    Click Element    css=.btn.primary
    Input Text    id:nome_usuario    ${NOME_FUNCIONARIO}
    Input Text    id:email    ${EMAIL_FUNCIONARIO}
    Input Text    id:senha    ${SENHA_FUNCIONARIO}
    Input Text    id:telefone_usuario    ${TELEFONE_FUNCIONARIO}
    Input Text    id:cpf    ${CPF_FUNCIONARIO}
    Click Element   css=[type='submit']
    Sleep    1s

Preencher endereço valido
    [Arguments]    ${ENDERECO_VALIDO_ORIGEM}    ${ENDERECO_VALIDO_DESTINO}
    Go To    ${URL_VIAGENS}
    Click Button    css=.btn.primary
    Wait Until Page Contains    Coordenadas do destino
    Input Text    id=enderecoOrigem    ${ENDERECO_VALIDO_ORIGEM}
    Sleep    1s
    Input Text    id:carga    1
    Sleep    5s
    Input Text    id=enderecoDestino    ${ENDERECO_VALIDO_DESTINO}
    Sleep    1s
    Input Text    id:obs    None
    Sleep    5s

Observar resultado autocomplete
    Textfield Should Contain     id=coordenadasOrigem    .
    Textfield Should Contain     id=coordenadasDestino    .
