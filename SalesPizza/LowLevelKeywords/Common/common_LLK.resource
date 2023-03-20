*** Settings ***
Library  SeleniumLibrary
Library    XML


*** Variables ***
# Variables: Biến
# Visible: Hiển thị 
${browser}  chrome

*** Keywords ***

Mo_Trang_Web    
    [Arguments]    ${url}
    open browser    ${url}    ${browser}
    Max_Size_Browser
    
Max_Size_Browser
    [Documentation]    
    SeleniumLibrary.Maximize Browser Window