*** Settings ***
Resource    KeyWords_Form.robot

# ANTES DE EXECUTAR robot "Nikolas\Caso_Todos.robot" EXECUTE PRIMEIRO robot "Nikolas\CadastroCorreto.robot"


*** Test Cases ***
Cadastro utilizando um CPF que já está cadastrado no sistema  #Caso 33 "Cadastro utilizando um CPF que já está cadastrado no sistema."
    Abrir Pagina Home FuelWise
    Preencher Infos da Empresa
    Clicar Continuar
    Preencher Infos Pessoais
    Clicar Enviar Cadastro
    Verificar CPF ja Cadastrado
    Fechar Navegador

Login com e-mail e senha corretos  #Caso 14 "Login com e-mail e senha corretos"
    Abrir Pagina Home FuelWise
    Fazer Login
    Clicar Entrar
    Verificar Texto de Login
    Fechar Navegador

Login com conta inativa  #Caso 30 "Login com conta inativa"
    Abrir Pagina Home FuelWise
    Fazer Login Inexistente
    Clicar Entrar
    Verificar Texto de Usuario Não Encontrado
    Fechar Navegador

Login com senha invalida  #Caso 31 "Login com senha invalida"
    Abrir Pagina Home FuelWise
    Fazer Login Senha Invalida
    Clicar Entrar
    Verificar Texto de Senha Invalida
    Fechar Navegador

Cadastro sem preencher campo obrigatório Nome da Empresa  #Caso 1 "Cadastro sem preencher campo obrigatório (Nome da Empresa)"
    Abrir Pagina Home FuelWise
    Preencher Infos da Empresa Sem Nome da Empresa
    Clicar Continuar
    Verificar Texto de Campo Obrigatorio
    Fechar Navegador