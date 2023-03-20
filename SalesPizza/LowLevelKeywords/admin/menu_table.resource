*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/dang_nhap_HLK.resource
Resource    ../../HighLevelKeyWords/admin/menu_table_HLK.resource

*** Keywords ***

Click_Them_San_Pham
    Wait Until Element Is Visible    //a[text()='Add new Product']
    Scroll Element Into View    //a[text()='Add new Product']
    Click Element    //a[text()='Add new Product']

Input_Loai_San_Pham_Id
    [Documentation]    Nhập ID Loại sản phẩm, ô này nhập không có tác dụng gì, nhưng trong code đang bắt nhập
    [Arguments]    ${id}
    Input Text    //input[@name='nbrCatId']    ${id}

Select_Menu
    [Arguments]    ${menu}
    Wait Until Element Is Visible    //select[@id='txtMenu']
    Click Element    //select[@id='txtMenu']
    Click Element    //option[@value='${menu}']

Chon_Anh_San_Pham
    [Arguments]    ${image_path}
    Wait Until Element Is Visible    //input[@name='txtPrdImg']
    Choose File    //input[@name='txtPrdImg']    ${image_path}

Input_Ten_San_Pham
    [Arguments]    ${name}
    Input Text    //input[@name='txtDishName']    ${name}

Input_Gia_San_Pham
    [Documentation]    Nhập giá sản phẩm
    [Arguments]    ${price}
    Input Text    //input[@name='nbrPrice']    ${price}

Input_Ton_Kho
    [Documentation]    Nhập số lượng tồn kho cho sản phẩm
    [Arguments]    ${inventory}
    Input Text    //input[@name='nbrInven']    ${inventory}

Input_Review_San_Pham
    [Documentation]    Giới thiệu sản phẩm
    [Arguments]    ${review}
    Input Text    //input[@name='txtCusReview']    ${review}

Xac_Nhan_Tao_San_Pham_Moi
    [Documentation]    Xác nhận tạo sản phẩm mới
    Click Element    //input[@value='Add New Product']

Xem_San_Pham
    [Documentation]    Xem sản phẩm 
    [Arguments]    ${name}
    Scroll Element Into View    //td[contains(text(), '${name}')][1]

Click_Sua_San_Pham
    [Documentation]    Sửa sản phẩm
    [Arguments]    ${locator}
    Click Element    //div[@id='content']//div[@class='container-fluid'][2]/div/div[2]//tr[${locator}]/td[9]/a

Click_Xoa_San_Pham
    [Documentation]    Sửa sản phẩm
    [Arguments]    ${locator}
    Click Element    //div[@id='content']//div[@class='container-fluid'][2]/div/div[2]//tr[${locator}]/td[10]/a

Xac_Nhan_Sua_San_Pham
    [Documentation]    Xác nhận sửa sản phẩm
    Click Element    //input[@value='Edit Product']
