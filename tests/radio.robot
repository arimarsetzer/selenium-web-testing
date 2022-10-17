*** Settings ***
Resource    base.robot

Test Setup       New Session
Test Teardown    Close Session

*** Variables ***

${movies}                   movies
${radio_cap_america}        cap
${radio_ironman}            iron-man
${radio_thor}               thor
${radio_avengers}           the-avengers
${radio_guardians}          guardians
${radio_antman}             ant-man
${radio_black_panter}       black-panther

*** Test Cases ***
Cap America Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_cap_america}
    Radio Button Should Be Set To      ${movies}    ${radio_cap_america}

Iron Man Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_ironman}
    Radio Button Should Be Set To      ${movies}    ${radio_ironman}

Thor Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_thor}
    Radio Button Should Be Set To      ${movies}    ${radio_thor}

Avengers Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_avengers}
    Radio Button Should Be Set To      ${movies}    ${radio_avengers}

Guardians Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_guardians}
    Radio Button Should Be Set To      ${movies}    ${radio_guardians}

Antman Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_antman}
    Radio Button Should Be Set To      ${movies}    ${radio_antman}

Black Panter Radio Button selected
    Go To                              ${base_url}${radios}
    Select Radio Button                ${movies}    ${radio_black_panter}
    Radio Button Should Be Set To      ${movies}    ${radio_black_panter}