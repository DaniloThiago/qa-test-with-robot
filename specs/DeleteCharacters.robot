*Settings*
Documentation   Suite de Teste de busca de personagens na API Marvel

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Xmen.py

Suite Setup     Super Setup     danilo.t.a.oliveira@msn.com

*Test Cases*
DELETE a character by ID 
    ${personagem}       Factory Mercurio
    ${mercurio}         POST New Character          ${personagem}
    ${mercurio_id}      Set Variable                ${mercurio.json()}[_id]
    ${response}         DELETE Character By ID      ${mercurio_id}

    Status Should Be    204     ${response}

    ${response2}    GET Character By ID  ${mercurio_id}
    Status Should Be    404     ${response2}

Don't Find a character by ID
    ${personagem_id}        Get Unique Id
    ${response}             DELETE Character By ID     ${personagem_id}
    Status Should Be        404     ${response}