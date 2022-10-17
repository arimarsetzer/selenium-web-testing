*** Settings ***
Resource         base.robot

Test Setup       New Session
Test Teardown    Close Session

*** Variables ***
${h5_element_title}   css:div[class=example] h5
${h5_title}           Marque o(s) filme(s) que você já assistiu?

${cap_america}        css:input[value=cap]
${ironman}            css:input[value=iron-man]
${thor}               id:thor
${avengers}           css:input[value=the-avengers]
${guardians}          css:input[value=guardians]
${antman}             css:input[name=antman]
${black_panter}       //*[@id='checkboxes']/input[7]     #Funciona sem o "xpath: antes do element"

*** Test Cases ***
Confirm Movies Page
    Go To                              ${base_url}${checkboxes}
    Element Text Should Be             ${h5_element_title}    ${h5_title}

Check Cap America Box
    Go To                              ${base_url}${checkboxes}
    Select Checkbox                    ${cap_america}
    Checkbox Should Be Selected        ${cap_america}

Check Iron Man Box
    Go To                              ${base_url}${checkboxes}
    Select Checkbox                    ${ironman}
    Checkbox Should Be Selected        ${ironman}

Check Thor Box
    Go To                              ${base_url}${checkboxes}
    Select Checkbox                    ${thor}
    Checkbox Should Be Selected        ${thor}

Check Avengers Box
    Go To                              ${base_url}${checkboxes}
    Select Checkbox                    ${avengers}
    Checkbox Should Be Selected        ${avengers}

Check Guardians Box
    Go To                              ${base_url}${checkboxes}
    Checkbox Should Be Selected        ${guardians}
    Unselect Checkbox                  ${guardians}
    Checkbox Should Not Be Selected    ${guardians}

Check Antman Box
    Go To                              ${base_url}${checkboxes}
    Checkbox Should Be Selected        ${antman}
    Unselect Checkbox                  ${antman}
    Checkbox Should Not Be Selected    ${antman}

Check Black Panter Box
    Go To                              ${base_url}${checkboxes}
    Select Checkbox                    ${black_panter}    
    Checkbox Should Be Selected        ${black_panter}