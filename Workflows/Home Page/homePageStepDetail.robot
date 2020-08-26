*** Settings ***
Library           SeleniumLibrary
Variables         ../../PageObjects/homePageLocators.py

*** Keywords ***
Open Home Page
    Open Browser    ${home_url}    ${browser}
    Maximize Browser Window
    Log To Console    \nOpened Homepage at url: ${home_url} on browser: ${browser}

Search Item
    [Arguments]    ${item}
    Log To Console    \nSearching ${item} from home page.
    #
    Wait Until Element Is Visible    ${search_bar}    10s
    Sleep    2s
    Click Element    ${search_bar}
    Wait Until Element Is Visible    ${search_box}    10s
    Sleep    2s
    Input Text    ${search_box}    ${item}
    Sleep    2s
    Click Element    ${btn_search}

Verify Search Page For Item
    [Arguments]    ${item}
    Wait Until Element Is Visible    //h1[contains(text(),"${item}")]    10s
    Sleep    2s
    Title Should Be    ${item} | Joolux
    Sleep    2s
    #
    Log To Console    \nSearch Page has shown results for ${item} searching.
