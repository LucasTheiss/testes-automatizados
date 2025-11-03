*** Settings ***
Resource    Variaveis.robot
Library     SeleniumLibrary

*** Keywords ***
Abrir Pagina Home FuelWise
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_home_aberta.png

Abrir Pagina Integrantes
    Open Browser    ${URL_VIAGENS}    chrome
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_home_aberta.png

Abrir Pagina Veiculos
    Open Browser    ${URL_VEICULOS}    chrome
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_home_aberta.png

Abrir Pagina Solicitacao
    Open Browser    ${URL_SOLICITACAO}    chrome
    Maximize Browser Window
    Capture Page Screenshot    prints/pagina_home_aberta.png

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
    Input Text                      ${EIXOS_FIELD}                  4        
    Capture Page Screenshot         prints/infos_vwiculos_correta.png

Preencher Infos Veiculos Incorreta
    Wait Until Element Is Visible   ${VEICULOS_MENU}                10s
    Click Element                   ${VEICULOS_BUTTON}
    Input Text                      ${VEICULO_FIELD}                Mercedes
    Input Text                      ${PLACA_FIELD}                  ayl7689     
    Input Text                      ${EIXOS_FIELD}                  aaaa        
    Capture Page Screenshot         prints/infos_veiculos_incorreta.png

Preencher Infos Viagem
    Wait Until Element Is Visible   ${VIAGEM_BUTTON}                10s
    Click Element                   ${VIAGEM_BUTTON}
    Select From List By Label       id:idusuario                    daniel
    Select From List By Label       :idveiculo                      ayl7689-Mercedes
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

Verificar Veiculo
    Wait Until Page Contains        ${VEICULO_TEXT}                    timeout=5s
    Page Should Contain             ${VEICULO_TEXT}
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