*Settings*
Documentation       Action route /characters

*Keywords*
POST New Character
    [Arguments]     ${payload}

    ${personagem}   Factory Thanos

    ${response}     POST
    ...             ${BASE_URL}/characters
    ...             json=${payload}
    ...             headers=${HEADERS}
    ...             expected_status=any

    [return]        ${response}