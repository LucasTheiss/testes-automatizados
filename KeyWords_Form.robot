*** Settings ***
Resource    Variaveis.robot
Library     SeleniumLibrary

*** Keywords ***
Abrir Pagina Home FuelWise
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_home_aberta.png


Preencher Infos da Empresa
    Wait Until Element Is Visible   ${BUTTON_MENU}                  10s
    Click Element                   ${BUTTON_MENU}
    Wait Until Element Is Visible   ${CAD_TRANSPORTADORA}           timeout=10s
    Click Element                   ${CAD_TRANSPORTADORA}
    Input Text                      ${NAMEENTERPRISE_FIELD}         Qualquer
    Input Text                      ${ADRESS_FIELD}                 Vila de Arapixuna
    Input Text                      ${CEP_FIELD}                    68128971
    Input Text                      ${CITY_FIELD}                   Arapixuna
    Input Text                      ${STATE_FIELD}                  PR
    Input Text                      ${PHONE_FIELD}                  41563265789
    Input Text                      ${CNPJ_FIELD}                   43.350.131/0001-01
    Capture Page Screenshot         prints/empresa_preenchida.png

Preencher Infos Pessoais
    Wait Until Element Is Visible   ${BUTTON_MENU}                  10s
    Input Text                      ${NAME_FIELD}                   João
    Input Text                      ${SURNAME_FIELD}                Pedro       
    Input Text                      ${CPF_FIELD}                    95685968019          
    Input Text                      ${EMAIL_FIELD}                  joaopedro@gmail.com
    Input Text                      ${PASSWORD_FIELD}               _123456789      
    Input Text                      ${CONFIRM_PASSWORD_FIELD}       _123456789 
    Input Text                      ${TEL_NUMBER_FIELD}             41895471234
    Capture Page Screenshot         prints/infos_pessoais.png

Preencher Infos da Empresa Sem Nome da Empresa
    Wait Until Element Is Visible   ${BUTTON_MENU}                  10s
    Click Element                   ${BUTTON_MENU}
    Wait Until Element Is Visible   ${CAD_TRANSPORTADORA}           timeout=10s
    Click Element                   ${CAD_TRANSPORTADORA}
    Input Text                      ${NAMEENTERPRISE_FIELD}         ${EMPTY}
    Input Text                      ${ADRESS_FIELD}                 araucaria
    Input Text                      ${CEP_FIELD}                    111111
    Input Text                      ${CITY_FIELD}                   araucaria
    Input Text                      ${STATE_FIELD}                  PR
    Input Text                      ${PHONE_FIELD}                  777777
    Input Text                      ${CNPJ_FIELD}                   7777888
    Capture Page Screenshot         prints/empresa_sem_nome.png

Clicar Entrar
    Click Element                   ${LOGIN_BUTTON} 
    Capture Page Screenshot         prints/clicou_entrar.png

Clicar Continuar
    Click Element                   ${CONTINUE_BUTTON} 
    Capture Page Screenshot         prints/clicou_continuar.png

Clicar Enviar Cadastro
    Click Element                   ${CAD_BUTTON} 
    Capture Page Screenshot         prints/clicou_enviar.png

Verificar Texto de Campo Obrigatorio
    Wait Until Page Contains        ${ERRO_TEXT}                    timeout=5s
    Page Should Contain             ${ERRO_TEXT}
    Capture Page Screenshot         prints/campo_obrigatorio.png

Verificar CPF ja Cadastrado
    Wait Until Page Contains        ${ERRO_TEXT_CPF}                timeout=5s
    Page Should Contain             ${ERRO_TEXT_CPF} 
    Capture Page Screenshot         prints/cpf_repetido.png

Verificar Texto de Login
    Wait Until Page Contains        ${NAME_TEXT}                    timeout=5s
    Page Should Contain             ${NAME_TEXT}
    Capture Page Screenshot         prints/login_sucesso.png

Verificar Texto de Usuario Não Encontrado
    Wait Until Page Contains        ${ERRO_TEXT_USER}               timeout=5s
    Page Should Contain             ${ERRO_TEXT_USER}
    Capture Page Screenshot         prints/usuario_nao_encontrado.png

Verificar Texto de Senha Invalida
    Wait Until Page Contains        ${ERRO_TEXT_SENHA}              timeout=5s
    Page Should Contain             ${ERRO_TEXT_SENHA}
    Capture Page Screenshot         prints/senha_invalida.png

Fechar Navegador
    Capture Page Screenshot         prints/final_teste.png
    Close Browser

