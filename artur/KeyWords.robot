*** Settings ***
Resource    Variaveis.robot
Library     SeleniumLibrary

*** Keywords ***
Abrir Pagina Home FuelWise
    Open Browser    ${URL_HOME}    chrome
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_home_aberta.png

Abrir Pagina Veiculos
    Go To    ${URL_VEICULOS}    
    Capture Page Screenshot    prints/pagina_veiculos.png

Abrir Pagina Solicitacao
    Go To    ${URL_SOLICITACAO}
    Capture Page Screenshot    prints/pagina_solitacao.png
Abrir Pagina Viagem
    Go To    ${URL_VIAGENS}
    Capture Page Screenshot    prints/pagina_solitacao.png

Fazer Login
    Wait Until Element Is Visible   ${BUTTON_MENU}                  10s
    Click Element                   ${BUTTON_MENU}
    Wait Until Element Is Visible   ${LOGIN_TRANSPORTADORA}         timeout=10s
    Click Element                   ${LOGIN_TRANSPORTADORA}
    Input Text                      ${EMAIL_FIELD}                  lucas1@gmail.com
    Input Text                      ${PASSWORD_FIELD}               123123123$
    Click Element    ${LOGIN_BUTTON}
    Capture Page Screenshot         prints/login_preenchido.png

Fazer Logout
    Open Browser    ${URL_HOME}    chrome
    Go to    ${URL_LOGOUT}    
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_logout.png  

Preencher Infos da Empresa
    Wait Until Element Is Visible   ${BUTTON_MENU}                  10s
    Click Element                   ${BUTTON_MENU}
    Wait Until Element Is Visible   ${CAD_TRANSPORTADORA}           timeout=10s
    Click Element                   ${CAD_TRANSPORTADORA}
    Input Text                      ${NAMEENTERPRISE_FIELD}         Qualquer
    Capture Page Screenshot         prints/empresa_preenchida.png

Preencher Infos Veiculos Correta
    Wait Until Element Is Visible   ${VEICULOS_BUTTON}              10s
    Click Element                   ${VEICULOS_BUTTON}
    Input Text                      ${VEICULO_FIELD}                Mercedes
    Input Text                      ${PLACA_FIELD}                  ayl7689     
    Input Text                      ${LITRAGEM_FIELD}                  100     
    Input Text                      ${EIXOS_FIELD}                  4        
    Capture Page Screenshot         prints/infos_veiculos_correta.png

Preencher Infos Veiculos Incorreta
    Wait Until Element Is Visible   ${VEICULOS_BUTTON}                10s
    Click Element                   ${VEICULOS_BUTTON}
    Input Text                      ${VEICULO_FIELD}                Mercedes
    Input Text                      ${PLACA_FIELD}                  $     
    Input Text                      ${EIXOS_FIELD}                  aaaa        
    Input Text                      ${LITRAGEM_FIELD}                  100     
    Capture Page Screenshot         prints/infos_veiculos_incorreta.png

Preencher Infos Viagem
    Wait Until Element Is Visible   ${VIAGEM_BUTTON}                10s
    Click Element                   ${VIAGEM_BUTTON}
    Input Text                      ${CARGA_FIELD}                  malte
    Input Text                      ${PESO_FIELD}                   120    
    Input Text                      ${OBS_FIELD}                    aaa
    Input Text                      ${ORIGEM_FIELD}                 Rua Jóquei clube
    Input Text                      ${CORO_FIELD}                   -25.4522174, -49.2534328   
    Input Text                      ${DESTINO_FIELD}                rua professor becker       
    Input Text                      ${CORD_FIELD}                   -25.3935087, -51.4591337       
    Capture Page Screenshot         prints/infos_veiculos_correta.png

Verificar Texto de Campo Obrigatorio
    Wait Until Page Contains        ${ERRO_TEXT}                    timeout=5s
    Page Should Contain             ${ERRO_TEXT}
    Capture Page Screenshot         prints/campo_obrigatorio.png
Verificar Texto de Campo Obrigatorio Solicitacao
    Wait Until Page Contains        Solicitação aprovada com sucesso.                    timeout=5s
    Page Should Contain             Solicitação aprovada com sucesso.
    Capture Page Screenshot         prints/campo_obrigatorio.png

Verificar Veiculo
    Wait Until Page Contains        ${VEICULO_TEXT}                    timeout=5s
    Page Should Contain             ${VEICULO_TEXT}
    Capture Page Screenshot         prints/veiculo.png
Verificar Veiculo Incorreto
    Wait Until Page Contains        Placa inválida                    timeout=5s
    Page Should Contain             Placa inválida
    Capture Page Screenshot         prints/veiculo.png

Verificar Viagem
    Wait Until Page Contains        ${VIAGEM_TEXT}                    timeout=5s
    Page Should Contain             ${VIAGEM_TEXT}
    Capture Page Screenshot         prints/viagem.png

Verificar Aprovar
    Wait Until Page Contains        ${APROVAR_TEXT}                    timeout=5s
    Page Should Contain             ${APROVAR_TEXT}
    Capture Page Screenshot         prints/aprovar.png

Verificar Sim
    Wait Until Page Contains        ${SIM_TEXT}                    timeout=5s
    Page Should Contain             ${SIM_TEXT}
    Capture Page Screenshot         prints/sim.png

Clicar Continuar
    Click Element                   ${CONTINUE_BUTTON} 
    Capture Page Screenshot         prints/clicou_continuar.png

Clicar Salvar
    Click Element                   ${SAVE_BUTTON} 
    Capture Page Screenshot         prints/clicou_salvar.png

Clicar Sim
    Click Element                   ${SIM_BUTTON} 
    Capture Page Screenshot         prints/clicou_sim.png

Clicar Aprovar
    Click Element                   ${APROVAR_BUTTON} 
    Capture Page Screenshot         prints/clicou_aprovar.png

Fechar o Navegador
    Capture Page Screenshot         prints/final_teste.png
    Close Browser

Realizar o cadastro
    Go To   http://localhost/FuelWise/pages/cadastro_transportadora.php?page=1
    Wait Until Page Contains    Cadastro da Empresa
    Input Text                      name:telefoneEmpresa         1212345678
    Wait Until Element Is Visible    xpath=//button[text()='Continuar para Informações Pessoais']
    Scroll Element Into View    xpath=//button[text()='Continuar para Informações Pessoais']
    Click Element    xpath=//button[text()='Continuar para Informações Pessoais']


Cadastrar motorista para viagem
    Go To    http://localhost/fuelwise/pages/gerente/integrantes.php?idtransportadora=1
    Click Element    css=.btn.primary
    Input Text    id:nome_usuario       João
    Input Text    id:email       joao@gmail.com
    Input Text    id:telefone_usuario      11987654321
    Input Text    id:cpf       95385494062
    Input Text    id:senha       123123213$
    Click Element     xpath=//button[text()='Salvar']
    Capture Page Screenshot    prints/cadastro_motorista.png