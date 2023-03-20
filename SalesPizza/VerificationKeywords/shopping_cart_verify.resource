*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Keywords ***
Check_Ten_San_Pham_Trong_Gio_Hang
    [Documentation]    Kiểm tra tên sản phẩm trong giỏ hàng vừa được thêm
    [Arguments]    ${row}    ${expected}
    ${actual} =    Get Text    //table[contains(@class, 'table-striped')]//tbody//tr[${row}]//td[2]
    Should Be Equal    ${actual}    ${expected}
Check_So_Luong_San_Pham_Trong_Gio_Hang
    [Documentation]    Kiểm tra số lượng sản phẩm trong giỏ hàng vừa được thêm
    [Arguments]    ${row}    ${expected}
    ${actual} =    Get Element Attribute    //table[contains(@class, 'table-striped')]//tbody//tr[${row}]//td[3]//input    value
    Should Be Equal    ${actual}    ${expected}
Check_Gia_San_Pham_Trong_Gio_Hang
    [Documentation]    Kiểm tra giá sản phẩm trong giỏ hàng vừa được thêm
    [Arguments]    ${row}    ${expected}
    ${actual} =    Get Text    //table[contains(@class, 'table-striped')]//tbody//tr[${row}]//td[4]
    Should Contain    ${actual}    ${expected}

Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang
    [Documentation]    Kiểm tra tổng số lượng sản phẩm trong giỏ hàng
    [Arguments]    ${expected}
    ${actual} =    Get Table Cell    //table[contains(@class, 'table-striped')]    -2    6
    Should Be Equal    ${actual}    ${expected}

Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang
    [Documentation]    Kiểm tra tổng số giá sản phẩm trong giỏ hàng
    [Arguments]    ${expected}
    ${actual} =    Get Table Cell    //table[contains(@class, 'table-striped')]    -1    6
    Should Be Equal    ${actual}    ${expected}

Check_San_Pham_Trong_Gio_Hang_HLK
    [Documentation]    Kiểm tra thông tin sản phẩm (tên, số lượng, giá) vừa được thêm vào trong giỏ hàng (High level key word)
    [Arguments]    ${row}    ${ten_san_pham}    ${so_luong_san_pham}    ${gia_san_pham}
    Check_Ten_San_Pham_Trong_Gio_Hang    ${row}    ${ten_san_pham}   
    Check_So_Luong_San_Pham_Trong_Gio_Hang        ${row}    ${so_luong_san_pham}   
    Check_Gia_San_Pham_Trong_Gio_Hang        ${row}    ${gia_san_pham} 
    
Check_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra thanh toán thành công
    ${actual} =    Get Text    //h3[text()='Thanh toán thành công ']
    Should Contain    ${actual}    Thanh toán thành công

Khong_Xuat_Hien_Button_Checkout
    [Documentation]    Kiểm tra không xuất hiện nút checkout (thanh toán) khi trong giỏ hàng chưa có bất kì sản phẩm nào
    Element Should Not Be Visible    //a[text()='Checkout']

Form_Thong_Tin_Thanh_Toan_Khong_Du_Thong_Tin
    [Documentation]    Kiểm tra thanh toán không thành công với trường hợp điền thông tin thanh toán không thành công
    Element Should Be Visible    //input[@value='option1']

Loi_So_Luong_San_Pham_Nho_Hon_0
    [Documentation]    Check lỗi số lượng sản phẩm nhỏ hơn 0 khi sửa trong giỏ hàng
    ${actual}=    Get Text    //div[contains(@class, 'alert')]/p
    Should Contain    ${actual}    không hợp lệ

Loi_So_Luong_San_Pham_Lon_Hon_1000
    [Documentation]    Check lỗi số lượng sản phẩm lớn hơn 1000 khi sửa trong giỏ hàng
    ${actual}=    Get Text    //div[contains(@class, 'alert')]/p
    Should Contain    ${actual}    vượt quá số lượng cho phép

Loi_Thanh_Toan_Khi_Chua_Dang_Nhap
    [Documentation]
    ${actual}=    Get Text    //div[contains(@class, 'alert')]/p
    Should Be Equal    ${actual}    You must Login to use this function



    
    
    