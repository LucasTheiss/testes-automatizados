*** Settings ***
Resource    KeyWords_Form.robot


*** Test Cases ***
Cadastro utilizando um CPF que já está cadastrado no sistema
    Abrir Pagina Home FuelWise
    Preencher Infos da Empresa
    Clicar Continuar
    Preencher Infos Pessoais
    Clicar Enviar Cadastro
    Fechar Navegador