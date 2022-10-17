*** Settings ***
Library    SeleniumLibrary 

*** Variables ***
${base_url}        https://training-wheels-protocol.herokuapp.com
${checkboxes}      /checkboxes
${radios}          /radios
${dropdown}        /dropdown
${tables}          /tables
${login_form}      /login

*** Keywords ***
New Session
    Open Browser    ${base_url}    headlesschrome    
Close Session
    Capture Page Screenshot
    Close Browser