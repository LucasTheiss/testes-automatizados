*** Settings ***
Resource    KeyWords_Form.robot


*** Test Cases ***
Login com senha invalida
    Abrir Pagina Home FuelWise
    Fazer Login Senha Invalida
    Clicar Entrar
    Verificar Texto de Senha Invalida
    Fechar Navegador

