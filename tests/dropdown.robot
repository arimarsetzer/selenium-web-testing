*** Settings ***
Resource    base.robot

Test Setup       New Session
Test Teardown    Close Session

*** Variables ***
${steve}    Steve Rogers
${bucky}    2
${tony}     3
${natasha}  4
${bruce}    5
${loki}     6
${scott}    Scott Lang

*** Test Cases ***
Steve Rogers Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Label          class:avenger-list         ${steve}
    ${selected}=                       Get Selected List Label    class:avenger-list
    Should Be Equal                    ${selected}                ${steve}             

Bucky Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Value          class:avenger-list         ${bucky}
    ${selected}=                       Get Selected List Value    class:avenger-list
    Should Be Equal                    ${selected}                ${bucky}

Tony Stark Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Value          class:avenger-list         ${tony}
    ${selected}=                       Get Selected List Value    class:avenger-list
    Should Be Equal                    ${selected}                ${tony}

Natasha Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Value          class:avenger-list         ${natasha}
    ${selected}=                       Get Selected List Value    class:avenger-list
    Should Be Equal                    ${selected}                ${natasha}

Bruce Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Value          class:avenger-list         ${bruce}
    ${selected}=                       Get Selected List Value    class:avenger-list
    Should Be Equal                    ${selected}                ${bruce}

Loki Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Value          class:avenger-list         ${loki}
    ${selected}=                       Get Selected List Value    class:avenger-list
    Should Be Equal                    ${selected}                ${loki}

Scott Selected
    Go To                              ${base_url}${dropdown}
    Select From List By Label          class:avenger-list         ${scott}
    ${selected}=                       Get Selected List Label    class:avenger-list
    Should Be Equal                    ${selected}                ${scott}