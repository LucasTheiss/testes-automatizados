*** Settings ***
Resource    cadveinok.robot
Resource    cadveiok.robot
Resource    cadviagem.robot
Resource    cadastrovazio.robot
Resource    solicitacao.robot
Test Setup  Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
CT1 - Realizar cadastro litragem invalida
    [Documentation]  Este teste realizar um cadastro de litragem inavalida
    [Tags]  cadveinok
    Abrir o navegador
    Realizar o cadastro de veiculo litragem incorreta
    Verificar resultado do cadastro
    Fechar o navegador

CT2 - Realizar cadastro de veiculo
    [Documentation]  Este teste realiza um cadastro de veiculo
    [Tags]  cadveiok
    Abrir o navegador
    Realizar o cadastro de veiculo
    Verificar resultado do cadastro do veiculo
    Fechar o navegador

CT3 - Realizar cadastro de viagem
    [Documentation]  Este teste realiza um cadastro de viagem
    [Tags]  cadviagem
    Abrir o navegador
    Realizar o cadastro da viagem
    Verificar resultado da viagem
    Fechar o navegador

CT4 - Realizar cadastro faltante
    [Documentation]  Este teste realiza um cadastro faltante
    [Tags]  cadastrovazio
    Abrir o navegador
    Realizar o cadastro faltante
    Verificar resultado do cadastro faltante
    Fechar o navegador

CT5 - Realizar cadastro com cnpj repetido
    [Documentation]  Este teste realiza um cadastro com cnpj repetido
    [Tags]  solicitacao
    Abrir navegador
    Realizar o cadastro com cnpj repetido
    Verificar resultado do cadastro com cnpj repetido
    Fechar o navegador