*** Settings ***
Resource    KeyWords_Form.robot


*** Test Cases ***
Cadastro utilizando um CPF que já está cadastrado no sistema
    Abrir Pagina Home FuelWise
    Preencher Infos da Empresa
    Clicar Continuar
    Preencher Infos Pessoais
    Clicar Enviar Cadastro
    Verificar CPF ja Cadastrado
    Fechar Navegador

Login com e-mail e senha corretos
    Abrir Pagina Home FuelWise
    Fazer Login
    Clicar Entrar
    Verificar Texto de Login
    Fechar Navegador

Login com conta inativa
    Abrir Pagina Home FuelWise
    Fazer Login Inexistente
    Clicar Entrar
    Verificar Texto de Usuario Não Encontrado
    Fechar Navegador

Login com senha invalida
    Abrir Pagina Home FuelWise
    Fazer Login Senha Invalida
    Clicar Entrar
    Verificar Texto de Senha Invalida
    Fechar Navegador

Cadastro sem preencher campo obrigatório Nome da Empresa
    Abrir Pagina Home FuelWise
    Preencher Infos da Empresa Sem Nome da Empresa
    Clicar Continuar
    Verificar Texto de Campo Obrigatorio
    Fechar Navegador