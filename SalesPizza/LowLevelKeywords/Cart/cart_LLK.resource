*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/dang_nhap_HLK.resource

*** Keywords ***

Click_Btn_Add_To_Cart
    [Documentation]    Click vào button Add to cart - Thêm vào giỏ hàng
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Sleep    0.5s
    Click Element    ${locator}
    
CLick_Btn_Checkout
    [Documentation]    Click button checkout (Thanh toán)
    Wait Until Element Is Visible    //a[text()='Checkout']
    Scroll Element Into View    //a[text()='Checkout']
    Click Element    //a[text()='Checkout']

Chon_Cach_Nhan_Hang
    [Documentation]    Chọn cách nhận hàng
    [Arguments]    ${options}
    Wait Until Element Is Visible    ${options}
    Click Element    ${options}

Chon_Cach_Nhan_Hang_Opt1
    [Documentation]    Chọn cách mua hàng là giao hàng tận nơi
    Wait Until Element Is Visible    //input[@value='option1']
    Click Element    //input[@value='option1']

Chon_Dia_Chi_Cua_Hang
    [Documentation]    Chọn địa chỉ cửa hàng nhâ đồ
    [Arguments]    ${locator}
    Click Element    //select[@name='CarryOrder']
    Sleep    1s
    Click Element    ${locator}

Input_First_Name
    [Documentation]    Nhập thông tin họ tên khi thanh toán
    [Arguments]    ${firstName}
    Input Text    //input[@name='FirstName']        ${firstName}

Input_Last_Name
    [Documentation]    Nhập thông tin tên khi thanh toán
    [Arguments]    ${lastName}
    Input Text    //input[@name='LastName']        ${lastName}

Input_Email_Khi_Thanh_Toan
    [Documentation]    Nhập thông tin Email khi thanh toán
    [Arguments]    ${Email}
    Input Text    //input[@name='Email']        ${Email}

Input_Phone
    [Documentation]    Nhập thông tin Phone khi thanh toán
    [Arguments]    ${Phone}
    Input Text    //input[@name='Phone']        ${Phone}

Input_Note
    [Documentation]    Nhập thông tin ghi chú
    [Arguments]    ${note}
    Input Text    //textarea[@name='Cmt']    ${note}

Click_Btn_Xac_Nhan_Thanh_Toan
    [Documentation]    CLick button xác nhận thanh toán
    Click Element    //div[@id='collapseTwo']//button[text()='THANH TOÁN']

Thanh_Toan_Momo
    [Documentation]    Chọn phương thức thanh toán qua ví điện tử Momo
    Click Element    //div[@class='card']//div[@class='card-body']//input[@value='option1']

Thanh_Toan_VtcPay
    [Documentation]    Chọn phương thức thanh toán qua ví điện tử VtcPay
    Click Element    //div[@class='card']//div[@class='card-body']//input[@value='option2']

Thanh_Toan_The_Noi_Dia
    [Documentation]    Chọn phương thức thanh toán qua thẻ nội địa
    Click Element    //div[@class='card']//div[@class='card-body']//input[@value='option3']

Chon_Ngan_Hang_Muon_Thanh_Toan
    [Documentation]    Lựa chọn ngân hàng muốn thanh toán khi chọn thanh toán qua thẻ tiêu dùng nội địa
    [Arguments]    ${bank}
    Click Element    //input[@value='${bank}']

Input_Tien_MoMo
    [Documentation]    Nhập số tiền sẽ thanh toán qua ví Momo
    [Arguments]    ${number}
    Input Text    //input[@name='txtCheck1']    ${number}  

Input_Tien_VtcPay
    [Documentation]    Nhập số tiền sẽ thanh toán qua ví VtcPay
    [Arguments]    ${number}
    Input Text    //input[@name='txtCheck2']    ${number} 

Input_Tien_The_Noi_Dia
    [Documentation]    Nhập số tiền sẽ thanh toán qua thẻ nội địa
    [Arguments]    ${number}
    Input Text    //input[@name='txtCheck3']    ${number} 

Click_Btn_Xac_Nhan_Chuyen_Tien_Momo
    [Documentation]    Click button xác nhận thanh toán chuyển tiền sau khi đã chọn phương thức thanh toán và nhập số tiền
    Click Element    //div[@class='card']//div[@id='collapseOne']//button[text()='CHECK OUT']

Click_Btn_Xac_Nhan_Chuyen_Tien_VtcPay
    [Documentation]    Click button xác nhận thanh toán chuyển tiền sau khi đã chọn phương thức thanh toán và nhập số tiền
    Click Element    //div[@class='card']//div[@id='collapseTwo']//button[text()='CHECK OUT']

Click_Btn_Xac_Nhan_Chuyen_Tien_The_Noi_Dia
    [Documentation]    Click button xác nhận thanh toán chuyển tiền sau khi đã chọn phương thức thanh toán và nhập số tiền
    Click Element    //div[@class='card']//div[@id='collapseThree']//button[text()='CHECK OUT']

# Form input option 1

Input_First_Name_Opt1
    [Documentation]    Input first name cho option 1
    [Arguments]    ${text}
    Input Text    //input[@name='txtFirstName']    ${text}

Input_Last_Name_Opt1
    [Documentation]    Input last name cho option 1
    [Arguments]    ${text}
    Input Text    //input[@name='txtLastName']    ${text}

Input_Email_Opt1
    [Documentation]    Input email cho option 1
    [Arguments]    ${email}
    Input Text    //div[@class='form-group']//input[@name='txtEmail']    ${email}

Input_Phone_Opt1
    [Documentation]    Input số điện thoại cho option 1
    [Arguments]    ${number}
    Input Text    //div[@class='form-group']//input[@name='nbrPhone1']    ${number}

Input_City_Opt1
    [Documentation]    Input thành phố cho option 1
    [Arguments]    ${city}
    Input Text    //div[@class='form-group']//input[@name='txtCity']    ${city}

Input_District_Opt1
    [Documentation]    Input quận cho option 1
    [Arguments]    ${district}
    Input Text    //div[@class='form-group']//input[@name='txtDistrict']    ${district}

Input_Address_Opt1
    [Documentation]    Input địa chỉ chi tiết cho option 1
    [Arguments]    ${address}
    Input Text    //div[@class='form-group']//input[@name='txtAddress']    ${address}

Input_Note_Opt1
    [Documentation]    Input ghi chú cho option 1
    [Arguments]    ${note}
    Input Text    //div[@class='form-group']//textarea[@name='txtCmt']    ${note}

Click_Btn_Xac_Nhan_Thanh_Toan_Opt1
    [Documentation]    CLick button xác nhận thanh toán cho cách Giao hàng tận nơi
    Wait Until Element Is Visible    //div[@id='collapseOne']//button[text()='THANH TOÁN']
    Click Element    //div[@id='collapseOne']//button[text()='THANH TOÁN']

Xoa_San_Pham
    [Documentation]    Xóa sản phẩm khỏi giỏ hàng
    [Arguments]    ${locator}
    Click Element    //div[@class='table-responsive']//tbody/tr[${locator}]/td[5]/a

Scroll_Cuoi_Trang
    [Documentation]    Scroll tới cuối trang (Footer)
    Scroll Element Into View    //footer[contains(@class, 'domino')]

Xoa_Toan_Bo_San_Pham
    [Documentation]    Xóa toàn bộ sản phẩm trong giỏ hàng
    Click Element    //a[contains(@href, 'deleteCart/all')]

Chinh_Sua_So_Luong_San_Pham_Trong_Gio_Hang
    [Documentation]    Chỉnh sửa số lượng sản phẩm trong giỏ hàng
    [Arguments]    ${locator}    ${so_luong_san_pham}
    Input Text    //div[@class='table-responsive']//tbody/tr[${locator}]/td[3]/input        ${so_luong_san_pham}  
    Click Element    //div[@class='table-responsive']//tbody/tr[${locator}]/td[6]/button