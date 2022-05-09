*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                https://the-internet.herokuapp.com/challenging_dom
${Titulo}             Challenging DOM
${Challenging_Dom}    //h3[contains(.,'Challenging DOM')]
@{Button}             //a[@class='button']    //a[contains(@class,'button alert')]    //a[contains(@class,'button success')]    
@{Edit}               edit      edit      edit      edit      edit      edit      edit      edit      edit      edit
@{Delete}             delete    delete    delete    delete    delete    delete    delete    delete    delete    delete

*** Keywords ***
Abrir o navegador
    Open Browser                          browser=firefox
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar o endereço web desafioDom
    Go To                                 url=${URL}
    Wait Until Page Contains              text=${Titulo}

Verifique o Titulo
    Element Should Be Visible             locator=${Challenging_Dom}

Clicar nos botões
    Click Link                            xpath=${Button[0]}
    Click Link                            xpath=${Button[1]}
    Click Link                            xpath=${Button[2]}
    Element Should Be Visible             locator=${Challenging_Dom}

Clicar no link edit
    Click Link                            link=${edit[1]}
    Click Link                            link=${edit[2]}
    Click Link                            link=${edit[3]}
    Click Link                            link=${edit[4]}
    Click Link                            link=${edit[5]}
    Click Link                            link=${edit[6]}
    Click Link                            link=${edit[7]}
    Click Link                            link=${edit[8]}
    Click Link                            link=${edit[9]}
    Element Should Be Visible             locator=${Challenging_Dom}

Clicar no link delete
    Click Link                            link=${Delete[1]}
    Click Link                            link=${Delete[2]}
    Click Link                            link=${Delete[3]}
    Click Link                            link=${Delete[4]}
    Click Link                            link=${Delete[5]}
    Click Link                            link=${Delete[6]}
    Click Link                            link=${Delete[7]}
    Click Link                            link=${Delete[8]}
    Click Link                            link=${Delete[9]}
    Element Should Be Visible             locator=${Challenging_Dom}

Dado que estou na page da the-internet.herokuapp.com/challenging_dom
    Acessar o endereço web desafioDom

Quando verificar o titulo Challenging DOM
    Verifique o Titulo

Então clico nos botões azul, vermelho e verde
    Clicar nos botões

Então clico no link edit do grid
    Clicar no link edit

E no link delete do grid
    Clicar no link delete
