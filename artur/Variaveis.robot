*** Variables ***
${URL_HOME}                     http://localhost/FuelWise/pages/
${URL_VEICULOS}                 http://localhost/FuelWise/pages/gerente/veiculos.php?idtransportadora=1
${URL_VIAGEM}                   http://localhost/FuelWise/pages/gerente/viagens.php?idtransportadora=1
${URL_SOLICITACAO}              http://localhost/FuelWise/pages/adm/solicitacoes.php
${URL_LOGOUT}                   http://localhost/FuelWise/pages/logout.php

${BUTTON_MENU}                  id:menu-icon
${CAD_TRANSPORTADORA}           xpath=//a[contains(text(), 'Transportadora')]
${NAMEENTERPRISE_FIELD}         name:nomeEmpresa
${CONTINUE_BUTTON}              xpath=//button[text()='Continuar para Informações Pessoais']
${ERRO_TEXT}                    Campo obrigatório
${SAVE_BUTTON}                  xpath=//button[text()='Salvar']
${VIAGEM_BUTTON}                xpath=//button[text()='Adicionar nova viagem']
${VEICULOS_BUTTON}              xpath=//button[text()='Adicionar novo veículo']
${APROVAR_BUTTON}               xpath=//button[text()='Aprovar']
${SIM_BUTTON}                   xpath=//button[text()='Sim tenho certeza']

${LOGIN_TRANSPORTADORA}         xpath=//a[contains(text(), 'Fazer login')]
${LOGIN_BUTTON}                 xpath=//button[text()='Entrar']
${EMAIL_FIELD}                  name:email
${PASSWORD_FIELD}               name:senha

${VEICULO_FIELD}                name:veiculo
${PLACA_FIELD}                  name:placa
${EIXOS_FIELD}                  name:eixos
${LITRAGEM_FIELD}               name:litragem
${ERRO_TEXT_CPF}                CPF ja cadastrado

${CARGA_FIELD}                  name:carga
${PESO_FIELD}                   name:peso
${OBS_FIELD}                    name:obs
${ORIGEM_FIELD}                 name:enderecoOrigem
${CORO_FIELD}                   name:coordenadasOrigem
${DESTINO_FIELD}                name:enderecoDestino
${CORD_FIELD}                   name:coordenadasDestino

${VEICULO_TEXT}                 Veículo cadastrado com sucesso
${VIAGEM_TEXT}                  Viagem cadastrado com sucesso
${SIM_TEXT}                     Erro
${APROVAR_TEXT}                 Tem certeza
${ERRO_TEXT_LITRAGEM}           Litragem inválida