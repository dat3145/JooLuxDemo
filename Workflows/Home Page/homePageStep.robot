*** Settings ***
Resource          homePageStepDetail.robot

*** Keywords ***
Customer go to JooLux website
    Open Home Page

Customer search for "${item}"
    Search Item    ${item}

Search Page should display result for "${item}"
    Verify Search Page For Item    ${item}
