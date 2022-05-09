*** Settings ***
Documentation    Documentação da API: http://jsonplaceholder.typicode.com/users
Library          RequestsLibrary
Library          Collections

*** Variables ***
${URS_API}        http://jsonplaceholder.typicode.com
&{USERS_15}       id=5
...               name=Chelsey Dietrich
...               email=Lucio_Hettinger@annie.ca
&{NOVO_USER}      id=11

*** Keywords ***
#Setup e Teardowns
Conectar API
    Create Session    UsersAPI    ${URS_API}

#Ações
Requisitar todos os users
    ${RESPOSTA}       Get Request    UsersAPI    users
    Log               ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

Requisitar o users "${ID_USERS}"
    ${RESPOSTA}       Get Request    UsersAPI    users/${ID_USERS}
    Log               ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

Cadastrar um nomo users
    ${HEADERS}        Create Dictionary    content-type=application/json
    ${RESPOSTA}       Post Request    UsersAPI    users
    ...                               data={ "0": { "id": 11, "name": "Isabella Vieira", "username": "Isa", "email": "isabella@gmail.com", "address": { "street": "Kulas Ligh", "suite": "Apt. 55", "city": "Serra", "zipcode": "92998-3875", "geo": { "lat": "-37.3158", "lng": "81.1497" } }, "phone": "1-770-736-8039 x56442", "website": "github.com", "company": { "name": "Romaguera", "catchPhrase": "Multi-layered client-server", "bs": "harness real-time" } }, "id": 11 }
    ...                               headers=${HEADERS}
    Log               ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

#Conferências
Conferir o status code
    [Arguments]       ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}

Conferir o status code Post
    [Arguments]        ${STATUSCODEPOST_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODEPOST_DESEJADO}

Conferir o reason
    [Arguments]    ${REASON_DESEJADO}
    Should Be Equal As Strings        ${RESPOSTA.reason}     ${REASON_DESEJADO}

Conferir se retorna os dados id, nome e email corretos do users 5
    Dictionary Should Contain Item    ${RESPOSTA.json()}    id             ${USERS_15.id}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    name           ${USERS_15.name}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    email          ${USERS_15.email}

Conferir se retorna o id do novo users
    Dictionary Should Contain Item    ${RESPOSTA.json()}    id             ${NOVO_USER.id}

Atualizar dados "${USERS_ID}"
    ${HEADERS}        Create Dictionary    content-type=application/json
    ${RESPOSTA}        Put Request    UsersAPI    users/${USERS_ID}
    ...                               data={ "0": { "id": 1, "name": "Isabella Vieira", "username": "Isa", "email": "isabella@gmail.com", "address": { "street": "Kulas Ligh", "suite": "Apt. 55", "city": "Serra", "zipcode": "92998-3875", "geo": { "lat": "-37.3158", "lng": "81.1497" } }, "phone": "1-770-736-8039 x56442", "website": "github.com", "company": { "name": "Romaguera", "catchPhrase": "Multi-layered client-server", "bs": "harness real-time" } }, "id": 11 }
    ...                               headers=${HEADERS}
    Log               ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

Deletar o users "${DELETEUSERS_ID}"
    ${HEADERS}        Create Dictionary    content-type=application/json
    ${RESPOSTA}        Delete Request    UsersAPI    users/${DELETEUSERS_ID}
    ...                               data={ "id": 2, "name": "Ervin Howell", "username": "Antonette", "email": "Shanna@melissa.tv", "address": { "street": "Victor Plains", "suite": "Suite 879", "city": "Wisokyburgh", "zipcode": "90566-7771", "geo": { "lat": "-43.9509", "lng": "-34.4618" } }, "phone": "010-692-6593 x09125", "website": "anastasia.net", "company": { "name": "Deckow-Crist", "catchPhrase": "Proactive didactic contingency", "bs": "synergize scalable supply-chains" } }
    ...                               headers=${HEADERS}
    Log               ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}