# Desafio Paraná

## Resumo:
Para o os dois desafios propostos dividir em 3 pastas de arquivos sendo: _Desafio 1 Cenarios de Teste / Desafio 2.1 WebTesting / Desafio 2.2 APIsTesting_.

### Para os testes automatizados utilizei as seguintes ferramentas:
* Python 3.10.4
* Robot Framework > SeleniumLibrary > Library Requests 0.7.2
* Visual Studio Code >  Robot Framework Language Server da Robocorp
* Web Driver > geckdriver-v0.31.0

## Instalação das Ferramentas:
* Python 3.10.4 <br> <https://www.python.org/> <br>
(Na Instalação deve ativar o CheckBox "Add Python 3.10.4 PATH")

* Robot Framework <br> Depois de ter instalado o Python 3 <br>
_Insira no Prompt de Comando:_ <br>
 ```pip install robotframework```  <br>  Para está instalando o Robot Framework
 
 * Library <br> Depois de ter instalado o Robot framework pelo Prompt de Comando agora iremos instalar as Library que foram utilizados nos testes. <br> 
 #### SeleniumLibrary
 _Insira no Prompt de Comando_ <br>
```pip install --upgrade robotframework-seleniumlibrary```

#### Library Requests
_Insira no Prompt de Comando_ <br>
```pip install -U robotframework-requests==0.7.2```<br>
_Foi utilizado a versão 0.7.2 da Library Requests_

* Visual Studio Code <br> _Vá na opção "Extensões" e procure pela extensão chamada:_ <br> 
```Robot Framework Language Server da Robocorp```<br>
_OBS: Não instale mais nenhum outro plugin para Robot._

* Web Driver <br> Os teste foram executados e testados no Browser Firefox(Mozilla) para isso acesse o link e baixe o ```geckdriver-v0.31.0``` de acordo com o seu sistema operacional, nesse cenário foi utilizado o Windows x64 <br> _Link_ <https://github.com/mozilla/geckodriver/releases>

## Execução:

* Para executar os testes abra o terminal de comando dentro no visual studio code na pasta dos projetos e insira o comando:
```robot -d .\resultados\ .\desafioDom_gherkin_bdd.robot``` > Para o Desafio 2.1 WebTesting <br>
```robot -d .\resultados\ .\TestCasesAPIUsers.robot``` > Para o Desafio 2.2 APITesting <br>
_Os Logs dos resultados ficaram nas devidas pastas de cada desafio._




