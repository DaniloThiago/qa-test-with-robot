*Settings*
Documentation   Suite de Teste do cadastro de personagens na API Marvel

Library     RequestsLibrary
Library     ${EXECDIR}/factories/Thanos.py

*Variables*
${URL}=             http://marvel.qaninja.academy

*Test Cases*
Deve cadastrar um personagens

    Account And Set Headers     danilo.t.a.oliveira@gmail.com

    &{personagem}   Factory Thanos

    ${response}     POST
    ...             ${URL}/characters
    ...             json=${personagem}
    ...             headers=${headers}

    Status Should Be    200     ${response}

*Keywords*
Account And Set Headers
    [Arguments]     ${email}

    &{user}         Create Dictionary   email=${email}

    ${response}     POST
    ...             ${URL}/accounts
    ...             json=${user}

    ${client_key}   Set Variable        ${response.json()}[client_key]
    &{HEADERS}      Create Dictionary   client_key=${client_key}

    Set Suite Variable      ${HEADERS}