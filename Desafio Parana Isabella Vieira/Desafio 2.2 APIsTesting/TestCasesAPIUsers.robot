*** Settings ***
Documentation    Documentação da API: http://jsonplaceholder.typicode.com/users
Suite Setup      Conectar API
Resource         ResourceAPI.robot

*** Test Cases ***
Buscar a listagem de todos os users (GET em todos os users)
    Requisitar todos os users
    Conferir o status code    200
    Conferir o reason    OK

Buscar um users específico (GET em um users específico)
    Requisitar o users "5"
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna os dados id, nome e email corretos do users 5

Cadastrar um novo users (POST)
    Cadastrar um nomo users
    Conferir o status code Post    201
    Conferir se retorna o id do novo users

Atualizar dados de um users (PUT)
    Atualizar dados "1"
    Conferir o status code    200
    Conferir o reason    OK

Deletar um users (DELETE)
    Deletar o users "2"
    Conferir o status code    200
    Conferir o reason    OK

