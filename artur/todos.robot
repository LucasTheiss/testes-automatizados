*** Settings ***
Resource  KeyWords.robot

*** Test Cases ***
Cadastro vazio
    Abrir Pagina Home FuelWise
    Realizar o cadastro
    Clicar Continuar
    Verificar Texto de Campo Obrigatorio
    Fechar o navegador  

Cadastro Veiculo Invalido
    Abrir Pagina Home FuelWise
    Fazer Login
    Abrir Pagina Veiculos
    Preencher Infos Veiculos Incorreta
    Clicar Salvar
    Verificar Veiculo
    Fechar o navegador

Cadastro Veiculo
    Abrir Pagina Veiculos
    Preencher Infos Veiculos Correta
    Clicar Salvar
    Verificar Veiculo
    Fechar o navegador  

Cadastro Viagem
    Abrir Pagina Viagem
    Preencher Infos Viagem
    Clicar Salvar
    Verificar viagem
    Fechar o navegador

Aprovar Solicitacao
    Fazer Logout
    Abrir Pagina Solicitacao
    Clicar Aprovar
    Verificar Aprovar
    Clicar Sim
    Verificar Sim
    Verificar Texto de Campo Obrigatorio
    Fechar o navegador