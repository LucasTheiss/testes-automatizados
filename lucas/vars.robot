*** Variables ***
${URL_LOGIN}        http://localhost/FuelWise/pages/login.php
${URL_VIAGENS}        http://localhost/FuelWise/pages/gerente/viagens.php?idtransportadora=1
${URL_INTEGRANTES}        http://localhost/FuelWise/pages/gerente/integrantes.php?idtransportadora=1

${RESULTADO_LOGIN_BRANCO}    Campo obrigatório.
${RESULTADO_LOGIN_EMAIL_INVALIDO}    Usuário não encontrado.

${NOME_FUNCIONARIO}    João Silva
${EMAIL_FUNCIONARIO}    joao@gmail.com
${SENHA_FUNCIONARIO}    123123123$
${TELEFONE_FUNCIONARIO}    11999999999
${CPF_FUNCIONARIO}    24306851087
${RESULTADO_CADASTRO_FUNCIONARIO}    Usuário cadastrado com sucesso.

${EMAIL_GERENTE}    lucas1@gmail.com
${SENHA_GERENTE}    123123123$
${ENDERECO_VALIDO_ORIGEM}    Avenida Paulista, São Paulo, SP, Brasil
${ENDERECO_VALIDO_DESTINO}    Rua Joquei clube