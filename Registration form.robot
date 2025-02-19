*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    chrome
${URL}    https://demo.automationtesting.in/
${timer}    3

*** Keywords ***
Browser Enable
    Open Browser    ${URL}    ${Browser}    chromedriver
    Maximize Browser Window
    Sleep    ${timer}
    

*** Test Cases ***
Register
    Browser Enable
   #Click Link    email    balajiyogi1809@gmail.com
    Click Element    xpath://*[@id="enterimg"]
    Input Text   Xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input    Balaji
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    K D
    Input Text    xpath://*[@id="eid"]/input     balajiyogi1809@gmail.com
    Select Radio Button    radiooptions    FeMale
    Select Checkbox    checkbox2
    Select From List By Label    xpath://*[@id="msdd"]     English
    Sleep    ${timer}

