*** Settings ***
Resource         base.robot

Test Setup       New Session
Test Teardown    Close Session


*** Variables ***
${userfield_element}              css:input[name=username] 
${passfield_element}              css:input[name=password]
${btn-login_element}              class:btn-login
${current_fullname}               Tony Stark
${user_name}                      stark
${user_password}                  jarvis!
${password_error}                 Senha é invalida!
${username_error}                 O usuário informado não está cadastrado!


*** Test Cases ***
Login with Sucess
    Go To                         ${base_url}${login_form}
    Login With                    ${user_name}    ${user_password}

    Should See Logged User        ${current_fullname}

Invalid password
    Go To                         ${base_url}${login_form}
    Login With                    ${user_name}    abc123

    Should Contain Login Alert    ${password_error}

Invalid user
    Go To                         ${base_url}${login_form}
    Login With                    starkou    ${user_password}

    Should Contain Login Alert    ${username_error}


*** Keywords ***
Login With
    [Arguments]                   ${uname}                 ${pass}

    Input Text                    ${userfield_element}     ${uname}
    Input Text                    ${passfield_element}     ${pass}
    Click Element                 ${btn-login_element}

Should Contain Login Alert
    [Arguments]                   ${expected_message}

    ${message}=                   Get WebElement             id:flash
    Should Contain                ${message.text}            ${expected_message}

Should See Logged User
    [Arguments]                   ${full_name}

    Page Should Contain           Olá, ${full_name}. Você acessou a área logada!