*Settings*
Documentation   The over all begin here

Library     RequestsLibrary
Library     Helpers.py

Resource        routes/Characters.robot

*Variables*
${BASE_URL}              http://marvel.qaninja.academy

*Keywords*
Super Setup
    [Arguments]         ${email}
    
    Set Client Key      ${email}
    Back To The Past

Set Client Key
    [Arguments]     ${email}

    &{user}         Create Dictionary   email=${email}

    ${response}     POST
    ...             ${BASE_URL}/accounts
    ...             json=${user}

    ${client_key}   Set Variable        ${response.json()}[client_key]
    &{HEADERS}      Create Dictionary   client_key=${client_key}

    Set Suite Variable      ${HEADERS}

Back To The Past
    DELETE      ${BASE_URL}/delorean     headers=${HEADERS}