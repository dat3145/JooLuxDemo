*** Settings ***
Resource          ../Workflows/Home Page/homePageStep.robot

*** Test Cases ***
Verify Search Product On Home Page
    Given Customer go to JooLux website
    When Customer search for "bag"
    Then Search Page should display result for "bag"
    [Teardown]    Close Browser
