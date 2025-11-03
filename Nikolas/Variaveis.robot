*** Variables ***
${URL}                          http://localhost/FuelWise/pages/
${BUTTON_MENU}                  id:menu-icon
${CAD_TRANSPORTADORA}           xpath=//a[contains(text(), 'Transportadora')]
${NAMEENTERPRISE_FIELD}         name:nomeEmpresa
${ADRESS_FIELD}                 name:endereco
${CEP_FIELD}                    name:cep
${CITY_FIELD}                   name:cidade   
${STATE_FIELD}                  name:estado   
${PHONE_FIELD}                  name:telefoneEmpresa   
${CNPJ_FIELD}                   name:cnpj
${CONTINUE_BUTTON}              xpath=//button[text()='Continuar para Informações Pessoais']
${ERRO_TEXT}                    Campo obrigatório

${NAME_FIELD}                   name:nomePessoal
${SURNAME_FIELD}                name:sobrenome
${CPF_FIELD}                    name:cpf
${EMAIL_FIELD}                  name:email
${PASSWORD_FIELD}               name:senha
${CONFIRM_PASSWORD_FIELD}       name:confirmarSenha
${TEL_NUMBER_FIELD}             name:telefonePessoal
${CAD_BUTTON}                   xpath=//button[text()='Enviar Cadastro']
${ERRO_TEXT_CPF}                CPF ja cadastrado

${LOGIN_TRANSPORTADORA}         xpath=//a[contains(text(), 'Fazer login')]
${LOGIN_BUTTON}                 xpath=//button[text()='Entrar']
${NAME_TEXT}                    João

${ERRO_TEXT_USER}               Usuário não encontrado

${ERRO_TEXT_SENHA}              A senha e usuário não coincidem