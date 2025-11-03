*** Variables ***
${URL}                          http://localhost/FuelWise/pages/
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