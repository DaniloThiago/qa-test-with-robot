*Settings*
Documentation   Suite de Teste do cadastro de personagens na API Marvel

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Thanos.py
Library     ${EXECDIR}/resources/factories/Deadpool.py
Library     ${EXECDIR}/resources/factories/Guardians.py

Suite Setup     Super Setup     danilo.t.a.oliveira@gmail.com

*Test Cases*
Test: Insert new person
    [Tags]      add

    ${personagem}   Factory Star Lord

    ${response}     POST New Character      ${personagem}

    Status Should Be    200     ${response}

Test: Character already exists :(
    [Tags]      dup

    ${personagem}   Factory Groot

    POST New Character      ${personagem}

    ${response}             POST New Character      ${personagem} 

    Status Should Be    409     ${response}

    Should Be Equal     ${response.json()}[error]
    ...                 Character already exists :(
