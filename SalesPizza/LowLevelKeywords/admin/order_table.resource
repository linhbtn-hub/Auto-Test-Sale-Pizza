*** Settings ***
Library  SeleniumLibrary
Library    XML
Library    DateTime
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/admin/order_table_HLK.resource

*** Keywords ***

CLick_Them_Moi_Don_Hang
    [Documentation]    Click thêm mới đơn hàng
    Scroll Element Into View    //a[text()='+ Add new Order']
    Click Element    //a[text()='+ Add new Order']

Input_User_Detail_Id_Don_Hang
    [Documentation]    Input ID User Id Detail của đơn hàng
    [Arguments]    ${id}
    Input Text    //input[@name='txtUserDetailId']    ${id}

Input_Ngay_Tao_Don_Hang
    [Documentation]    Input Ngày tạo đơn hàng
    [Arguments]    ${date}
    Input Text    //input[@name='txtDate']    ${date}

Input_Thoi_Gian_Don_Hang
    [Documentation]    Input Giờ Phút AM hoặc PM khi tạo đơn hàng
    [Arguments]    ${time}
    Input Text    //input[@name='txtDate']    ${time}

Input_User_ID_Don_Hang
    [Arguments]    ${userId}
    Input Text    //input[@name='txtUserId']    ${userId}

Input_Trang_Thai_Don_Hang
    [Documentation]    Input Trạng thái đơn hàng
    [Arguments]    ${status} 
    Input Text    //input[@name='txtStatus']    ${status}

Xac_Nhan_Them_Don_Hang
    [Documentation]    Xác nhận thêm đơn hàng
    Click Element    //input[@value='Add New Order']

Click_Sua_Don_Hang
    [Documentation]    Click sửa đơn hàng
    [Arguments]    ${locator}
    Click Element    //div[@id='content']//div[@class='container-fluid'][2]/div/div[1]//tr[${locator}]//a[text()='Edit']

Input_Trang_Thai_Don_Hang_Khi_Sua
    [Documentation]    Input trạng thái đơn thái khi sửa đơn hàng
    [Arguments]    ${trang_thai}
    Input Text    //input[@name='txtStatus']    ${trang_thai}

Xac_Nhan_Sua_Don_Hang   
    [Documentation]    Click button xác nhận sửa đơn hàng
    Click Element    //input[@value='Edit Order']

Xem_Don_Hang_Vua_Sua
    [Documentation]    Sau khi sửa xong đơn hàng, quay lại check thông tin vừa sửa
    [Arguments]    ${locator}
    Scroll Element Into View    //div[@id='content']//div[@class='container-fluid'][2]/div/div[1]//tr[${locator}]//a[text()='Edit'] 

Xoa_Don_Hang_LLK
    [Documentation]    Xóa đơn hàng
    [Arguments]    ${locator}
    Click Element    //div[@id='content']//div[@class='container-fluid'][2]/div/div[1]//tr[${locator}]//a[text()='Del']     
    
Scroll_Toi_Btn_Add_New_Order
    [Documentation]    Scroll tới nút thêm mới đơn hàng
    Scroll Element Into View    //a[text()='+ Add new Order']

Scroll_Toi_Btn_Add_New_Delive
    [Documentation]    Scroll tới nút thêm mới giao vận
    Scroll Element Into View    //a[text()='+ Add new Delivery']

Scroll_Toi_Btn_Add_New_Order_Detail
    [Documentation]    Scroll tới nút thêm mới chi tiết đơn hàng
    Scroll Element Into View    //a[text()='+ Add new Order Detail']

Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    [Documentation]    Di chuyển tới màn hình quản lý đơn hàng của admin
    Go to    http://localhost:81/Shale-PIZZAzzz-master/public/backend/order-table