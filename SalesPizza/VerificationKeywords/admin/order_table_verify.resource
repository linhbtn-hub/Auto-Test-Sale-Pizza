*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Keywords ***

# ============================ ORDER_TABLE ============================

Check_Trang_Thai_Don_Hang_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra trạng thái đơn hàng khi thanh toán thành công trong giao diện quản trị
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[1]//table    -2    4
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}
    
Check_User_ID_Don_Hang_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra thông tin chủ sở hữu đơn hàng khi thanh toán thành công trong giao diện quản trị
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[1]//table    -2    2
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}

Check_Thong_Tin_Don_Hang_HLK
    [Documentation]    Kiểm tra thông tin (trạng thái và userId) đơn hàng khi thanh toán thành công 
    [Arguments]    ${userId}    ${trang_thai}
    Check_Trang_Thai_Don_Hang_Khi_Thanh_Toan_Thanh_Cong    ${trang_thai} 
    Check_User_ID_Don_Hang_Khi_Thanh_Toan_Thanh_Cong    ${userId}  


# ============================ DELIVERY_TABLE ============================

Check_SDT_Giao_Van_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra số điện thoại khi thanh toán thành công trong giao diện quản trị
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[2]//table    -2    3
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}
    
Check_User_ID_Giao_Van_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra thông tin chủ sở hữu đơn hàng khi thanh toán thành công trong giao diện quản trị
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[2]//table    -2    2
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}
    
Check_Dia_Chi_Cua_Hang_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra thông tin cửa hàng khách sẽ đến lấy khi thanh toán thành công trong giao diện quản trị
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[2]//table    -2    4
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}
    
Check_Dia_Chi_Chi_Tiet_Cua_Khach_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra thông tin địa chỉ chi tiết của khách sẽ đến lấy khi thanh toán thành công trong giao diện quản trị
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[2]//table    -2    5
    Log To Console    ${value}
    Should Contain    ${value}    ${expect}

Check_Thong_Tin_Giao_Van_OPT_1_HLK
    [Documentation]    Kiểm tra thông tin (SĐT và userId và địa chỉ cửa hàng khách đến lấy) giao vận khi thanh toán thành công 
    [Arguments]    ${userId}    ${sdt}    ${dia_chi}
    Check_User_ID_Giao_Van_Khi_Thanh_Toan_Thanh_Cong    ${userId}
    Check_SDT_Giao_Van_Khi_Thanh_Toan_Thanh_Cong    ${sdt}  
    Check_Dia_Chi_Chi_Tiet_Cua_Khach_Khi_Thanh_Toan_Thanh_Cong    ${dia_chi}

Check_Thong_Tin_Giao_Van_OPT_2_HLK
    [Documentation]    Kiểm tra thông tin (SĐT và userId và địa chỉ cửa hàng khách đến lấy) giao vận khi thanh toán thành công 
    [Arguments]    ${userId}    ${sdt}    ${dia_chi}
    Check_User_ID_Giao_Van_Khi_Thanh_Toan_Thanh_Cong    ${userId}
    Check_SDT_Giao_Van_Khi_Thanh_Toan_Thanh_Cong    ${sdt}  
    Check_Dia_Chi_Cua_Hang_Khi_Thanh_Toan_Thanh_Cong    ${dia_chi}

# ============================ ORDER_DETAIL_TABLE ============================

Check_Ten_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra tên sản phẩm trong chi tiết đơn hàng khi thanh toán thành công
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[3]//table    -2    2
    Log To Console    ${value}
    Should Contain    ${value}    ${expect}

Check_So_Luong_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra số lượng sản phẩm trong chi tiết đơn hàng khi thanh toán thành công
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[3]//table    -2    3
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}

Check_Gia_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong
    [Documentation]    Kiểm tra giá sản phẩm trong chi tiết đơn hàng khi thanh toán thành công
    [Arguments]    ${expect}       
    ${value}     Get Table Cell    //div[@id='content']//div[@class='container-fluid'][2]/div/div[3]//table    -2    4
    Log To Console    ${value}
    Should Be Equal    ${value}    ${expect}

Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK
    [Documentation]    Kiểm tra thông tin (tên sản phẩm, số lượng và giá sản phẩm) chi tiết đơn hàng khi thanh toán thành công 
    [Arguments]    ${ten_san_pham}    ${so_luong}    ${gia}
    Check_Ten_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong    ${ten_san_pham}    
    Check_So_Luong_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong    ${so_luong}
    Check_Gia_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong    ${gia}