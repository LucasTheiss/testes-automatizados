*** Settings ***
Resource    KeyWords_Form.robot


*** Test Cases ***
Login com conta inativa
    Abrir Pagina Home FuelWise
    Fazer Login Inexistente
    Clicar Entrar
    Verificar Texto de Usuario Não Encontrado
    Fechar Navegador

