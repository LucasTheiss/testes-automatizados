*** Settings ***
Resource    KeyWords_Form.robot


*** Test Cases ***
Cadastro sem preencher campo obrigatório Nome da Empresa
    Abrir Pagina Home FuelWise
    Preencher Infos da Empresa Sem Nome da Empresa
    Clicar Continuar
    Verificar Texto de Campo Obrigatorio
    Fechar Navegador

