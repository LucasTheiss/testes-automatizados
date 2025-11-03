*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir o navegador
    [Arguments]    ${URL}
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot 
    Close Browser

Cadastrar novo funcionario
    [Arguments]    ${NOME_FUNCIONARIO}    ${EMAIL_FUNCIONARIO}    ${SENHA_FUNCIONARIO}    ${TELEFONE_FUNCIONARIO}    ${CPF_FUNCIONARIO}
    Go To    http://localhost/FuelWise/pages/gerente/integrantes.php?idtransportadora=3
    Click Button    css=.btn.primary
    Input Text    id=nome_usuario    ${NOME_FUNCIONARIO}
    Input Text    id=email    ${EMAIL_FUNCIONARIO}
    Input Text    id=senha    ${SENHA_FUNCIONARIO}
    Input Text    id=telefone_usuario    ${TELEFONE_FUNCIONARIO}
    Input Text    id=cpf    ${CPF_FUNCIONARIO}
    Click Element   css=[type='submit']
    Sleep    1s