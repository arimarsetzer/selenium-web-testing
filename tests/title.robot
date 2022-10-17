*** Settings ***
Resource         base.robot

Test Setup       New Session
Test Teardown    Close Session

*** Test Cases ***
Validate page title training wheels
    Title Should Be        Training Wheels Protocol
