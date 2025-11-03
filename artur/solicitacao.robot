*** Settings ***
Resource  KeyWords.robot

*** Variables ***
${URL}      http://localhost/FuelWise/pages/adm/solicitacoes.php
${BROWSER}      Chrome
${BOTAO_APROVAR}        xpath=//a[contains(text(), 'Aprovar')]
${SIM}      xpath=//a[contains(text(), 'Sim tenho certeza')]
${RESULTADO}        Falha ao aprovar nova transportadora

*** Keywords ***
Abrir Pagina Solicitacao
Clicar Aprovar
Verificar Aprovar
Clicar Sim
Verificar Sim
Verificar resultado do cadastro com cnpj repetido
Fechar o navegador