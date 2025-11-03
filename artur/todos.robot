*** Settings ***
Resource  KeyWords.robot

*** Keywords ***
Cadastro vazio
    Abrir Pagina Home FuelWise
    Realizar o cadastro
    Clicar Continuar
    Verificar Texto de Campo Obrigatorio
    Fechar o navegador  

Cadastro Veiculo
    Abrir Pagina Veiculos
    Preencher Infos Veiculos Correta
    Clicar Salvar
    Verificar Veiculo
    Fechar o navegador  

Cadastro Veiculo Invalido
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
    Abrir Abrir Solicitacao
    Clicar Aprovar
    Verificar Aprovar
    Clicar Sim
    Verificar Sim
    Verificar resultado do cadastro com cnpj repetido
    Fechar o navegador