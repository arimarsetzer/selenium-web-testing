*** Settings ***
Resource         base.robot

Test Setup       New Session
Test Teardown    Close Session

*** Variables ***
${black_panter}    xpath:.//tr[contains(., '@chadwickboseman')]

*** Test Cases ***
Verify the value when informing the number of the line
    Go To                        ${base_url}${tables}
    Table Row Should Contain     id:actors    1    @robertdowneyjr

Find the line by key-text and validate the other values
    Go To                        ${base_url}${tables}
    ${target}=                   Get WebElement        ${black_panter}
    Log                          ${target.text}    #Helps to find the values to check
    Log To Console               ${target.text}    #Helps to find the values to check
    Should Contain               ${target.text}        $ 700.000
    Should Contain               ${target.text}        Pantera Negra