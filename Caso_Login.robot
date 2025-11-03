*** Settings ***
Resource    KeyWords_Form.robot


*** Test Cases ***
Login com e-mail e senha corretos
    Abrir Pagina Home FuelWise
    Fazer Login
    Clicar Entrar
    Verificar Texto de Login
    Fechar Navegador

