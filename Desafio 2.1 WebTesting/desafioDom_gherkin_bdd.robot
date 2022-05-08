*** Settings ***
Documentation    Essa suíte executa o Desafio Dom
Resource         desafioDom.resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - clique em todos os 3 botões
    [Documentation]  Esse teste verifica a seleção dos button azul, vermelho, verde
    [Tags]           button
    Dado que estou na page da the-internet.herokuapp.com/challenging_dom
    Quando verificar o titulo Challenging DOM
    Então clico nos botões azul, vermelho e verde

Caso de Teste 02 - clicar em todos os botões edit e delete da grid
    [Documentation]  Esse teste verifica a seleção dos link edit, delete
    [Tags]           link
    Dado que estou na page da the-internet.herokuapp.com/challenging_dom
    Quando verificar o titulo Challenging DOM
    Então clico no link edit do grid
    E no link delete do grid