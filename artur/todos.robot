*** Settings ***
Resource  KeyWords.robot

*** Test Cases ***
Cadastro vazio
    Abrir Pagina Home FuelWise
    Realizar o cadastro
    Verificar Texto de Campo Obrigatorio
    Fechar o navegador  

Aprovar Solicitacao
    Abrir Pagina Home FuelWise
    Go To   http://localhost/FuelWise/pages/adm/admRole.php
    Abrir Pagina Solicitacao
    Clicar Aprovar
    Verificar Aprovar
    Clicar Sim
    Verificar Texto de Campo Obrigatorio Solicitacao
    Fechar o navegador

Cadastro Veiculo Invalido
    Abrir Pagina Home FuelWise
    Fazer Login
    Abrir Pagina Veiculos
    Preencher Infos Veiculos Incorreta
    Clicar Salvar
    Verificar Veiculo Incorreto
    Fechar o navegador

Cadastro Veiculo
    Abrir Pagina Home FuelWise
    Fazer Login
    Abrir Pagina Veiculos
    Preencher Infos Veiculos Correta
    Clicar Salvar
    Verificar Veiculo
    Fechar o navegador  

Cadastro Viagem
    Abrir Pagina Home FuelWise
    Fazer Login
    Cadastrar motorista para viagem
    Abrir Pagina Viagem
    Preencher Infos Viagem
    Clicar Salvar
    Verificar viagem
    Fechar o navegador
