*** Settings ***
Library     SeleniumLibrary
Resource    vars.robot
Resource    login_branco.robot
Resource    cadastro_funcionario.robot
Resource    autocomplete_endereco.robot
Test Teardown    Fechar o navegador
Test Setup    Abrir o navegador    ${URL_LOGIN}

*** Test Cases ***
CT1 - Login com campos em branco
    [Documentation]  Tenta logar com campos em branco
    Preencher campos login    ${EMPTY}    ${EMPTY}
    Observar resultado    ${RESULTADO_LOGIN_BRANCO}

CT2 - Login com email inválido
    [Documentation]  Tenta logar com email inválido
    Preencher campos login    lucas    123123123$
    Observar resultado    ${RESULTADO_LOGIN_EMAIL_INVALIDO}

CT3 - Cadastro funcionario
    [Documentation]  Teste de cadastro de funcionário
    Preencher campos login    ${EMAIL_GERENTE}    ${SENHA_GERENTE}
    Cadastrar novo funcionario   ${NOME_FUNCIONARIO}    ${EMAIL_FUNCIONARIO}    ${SENHA_FUNCIONARIO}    ${TELEFONE_FUNCIONARIO}    ${CPF_FUNCIONARIO}
    Observar resultado    ${RESULTADO_CADASTRO_FUNCIONARIO}

CT4 - Autocomplete no campo de endereço
    [Documentation]  Teste de autocomplete no campo de endereço durante cadastro de viagem
    Preencher campos login    ${EMAIL_GERENTE}    ${SENHA_GERENTE}
    Preencher endereço valido   ${ENDERECO_VALIDO_ORIGEM}    ${ENDERECO_VALIDO_DESTINO}
    Observar resultado autocomplete

CT5 - Cadastro de viagem sem funcionarios disponiveis
    [Documentation]  Teste de cadastro de viagem sem funcionarios disponiveis
    Preencher campos login    ${EMAIL_GERENTE}    ${SENHA_GERENTE}
    Go To    ${URL_VIAGENS}
    Click Button    css=.btn.primary
    Wait Until Page Contains    Nenhum motorista encontrado