*** Settings ***
Resource  KeyWords.robot

*** Keywords ***
Cadastro vazio
    Abrir o navegador
    Realizar o cadastro
    Clicar Continuar
    Verificar Texto de Campo Obrigatorio
    Fechar o navegador  

Cadastro Veiculo
    Abrir o navegador
    Preencher Infos Veiculos Correta
    Clicar Salvar
    Verificar Veiculo
    Fechar o navegador  

Cadastro Veiculo Invalido
    Abrir o navegador
    Preencher Infos Veiculos Correta
    Clicar Salvar
    Verificar Veiculo
    Fechar o navegador

Cadastro Viagem
    Abrir o navegador
    Preencher Infos Viagem
    Clicar Salvar
    Verificar viagem
    Fechar o navegador

Aprovar Solicitacao
    Abrir o navegador
    Clicar Aprovar
    Verificar Aprovar
    Clicar Sim
    Verificar Sim
    Verificar resultado do cadastro com cnpj repetido
    Fechar o navegador