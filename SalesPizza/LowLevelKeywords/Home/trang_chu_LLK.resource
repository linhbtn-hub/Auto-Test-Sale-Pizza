*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource


*** Variables ***
# Variables: Biến
# Visible: Hiển thị 

*** Keywords ***
Click_Vao_Comboffers
    Click Element    //a[text()='COMBO OFFERS']

Chuyen_Tiep_Carousel 
    [Documentation]    Lướt slide (carousel) ở màn hình trang chủ
    Click Element    //span[@class='carousel-control-next-icon']

Hien_Thi_Menu
    [Documentation]    Click vào Menu trên thanh nav bar để hiển thị danh sách tiêu đề các đồ ăn thức uống
    Click Element    //a[text()='MENU']
    Scroll Element Into View    //div[@class='menu-garlic']//a[text()='GARLIC BREADS']
Hien_Thi_Combo
    [Documentation]    click vào  combo offer để hiển thị thông tin combo
    Click Element    //a[text()='COMBO OFFERS']
    Scroll Element Into View    //button[text()='ORDER 9" SIZE']
    Sleep    2s
    Scroll Element Into View    //img[@src='img-combo/3.jpg']
    Sleep    2s
    Scroll Element Into View    //img[@src='img-combo/4.jpg']
    Sleep    2s
    Scroll Element Into View    //img[@src='img-combo/6.jpg']
    Sleep    2s