*** Settings ***
Resource    ../LowLevelKeywords/Menu/menu_LLK.resource
Resource    ../LowLevelKeywords/Cart/cart_LLK.resource
Resource    ../HighLevelKeyWords/cart_HLK.resource
Resource    ../LowLevelKeywords/admin/order_table.resource
Resource    ../VerificationKeywords/dang_nhap_verify.resource
Resource    ../VerificationKeywords/shopping_cart_verify.resource
Resource    ../VerificationKeywords/admin/order_table_verify.resource
Resource    ../VerificationKeywords/form_1_verify.resource
Resource    ../VerificationKeywords/form_2_verify.resource


*** Variables ***

*** Test Cases ***
TC_52
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages_V2    beverages
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/56')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Mojito    1    4
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    1
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    4
    Sleep    2s
    CLick_Btn_Checkout
    Chon_Cach_Nhan_Hang_Opt1
    Click_Btn_Xac_Nhan_Thanh_Toan_Opt1

    # Verify step
    Form_Thong_Tin_Thanh_Toan_Khong_Du_Thong_Tin

    Sleep    2s
    Close Browser
    
TC_53
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    CLick_Btn_Beverages_V2    beverages
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/56')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Mojito    1    4
    CLick_Btn_Pizza_Sand_Wiches_V2    pizzasandwiches
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/41')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Meatball & Pepperoni    1    12
    Sleep    1s
    Chinh_Sua_So_Luong_San_Pham_Trong_Gio_Hang    2    2
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    3
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    28
    
    Sleep    2s
    Close Browser
    
TC_54
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    CLick_Btn_Beverages_V2    beverages
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/56')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Mojito    1    4
    CLick_Btn_Pizza_Sand_Wiches_V2    pizzasandwiches
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/41')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Meatball & Pepperoni    1    12
    Sleep    1s
    Chinh_Sua_So_Luong_San_Pham_Trong_Gio_Hang    1    -2
    Loi_So_Luong_San_Pham_Nho_Hon_0
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    2
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    16
    
    Sleep    2s
    Close Browser
    
TC_55
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/beverages?page=2
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/59')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Latte    1    4
    Sleep    1s
    Chinh_Sua_So_Luong_San_Pham_Trong_Gio_Hang    1    1001
    Loi_So_Luong_San_Pham_Lon_Hon_1000
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    1
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    4
    
    Sleep    2s
    Close Browser
    
TC_56
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/beverages?page=2
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/59')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Latte    1    4
    Sleep    1s
    CLick_Btn_Checkout
    Thanh_Toan_Option_1_HLK    ${EMPTY}    Bui    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    Nha so 10    Ship cho mình đến đúng giờ nhé

    # Verify Step
    Ho_Ten_Trong_Form_1
    Close Browser
    
TC_57
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/beverages?page=2
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/59')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Latte    1    4
    Sleep    1s
    CLick_Btn_Checkout
    Thanh_Toan_Option_1_HLK    Linh    ${EMPTY}    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    Nha so 10    Ship cho mình đến đúng giờ nhé
    
    # Verify Step
    Ten_Trong_Form_1
    Close Browser
    
TC_58
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    ${EMPTY}    Ha Noi    Thanh Tri    Nha so 10    Ship cho mình đến đúng giờ nhé
    
    # Verify Step
    So_Dien_Thoai_Trong_Form_1
    Close Browser
    
TC_59
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/beverages?page=2
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/59')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Latte    1    4
    Sleep    1s
    CLick_Btn_Checkout
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    ${EMPTY}    Thanh Tri    Nha so 10    Ship cho mình đến đúng giờ nhé
    
    # Verify Step
    Thanh_Pho_Trong_Form_1
    Close Browser
    
TC_60
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/beverages?page=2
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/59')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Latte    1    4
    Sleep    1s
    CLick_Btn_Checkout
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    Ha Noi    ${EMPTY}    Nha so 10    Ship cho mình đến đúng giờ nhé
    
    # Verify Step
    Quan_Trong_Form_1
    Close Browser
    
TC_61
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/beverages?page=2
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/59')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Latte    1    4
    Sleep    1s
    CLick_Btn_Checkout
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    ${EMPTY}    Ship cho mình đến đúng giờ nhé
    
    # Verify Step
    Dia_Chi_Chi_Tiet_Trong_Form_1
    Close Browser

TC_62
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    Nha so 10    Ship cho mình đến đúng giờ nhé

    Sleep    2s
    Close Browser

TC_63
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    ${EMPTY}    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay

    # Verify Step
    Ho_Ten_Trong_Form_2

    Sleep    2s
    Close Browser

TC_64
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    ${EMPTY}    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay

    # Verify Step
    Ten_Trong_Form_2

    Sleep    2s
    Close Browser

TC_65
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    ${EMPTY}    Tôi sẽ đến lấy đồ lúc trưa nay

    # Verify Step
    So_Dien_Thoai_Trong_Form_2

    Sleep    2s
    Close Browser

TC_66
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay


    Sleep    2s
    Close Browser

TC_67
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    
    # Verify Step
    Loi_Thanh_Toan_Khi_Chua_Dang_Nhap

    Sleep    2s
    Close Browser

TC_18
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    3
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    22

    Sleep    2s
    Close Browser

TC_19
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    3
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    22
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_Momo_HLK    1000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    SUPER SUPREME    3    22    

    Sleep    2s
    Close Browser

TC_34
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/menu
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Pizza
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_Momo_HLK    1000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    SUPER SUPREME    1    10

    Sleep    2s
    Close Browser

TC_35
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Breads
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Double-Garlic & Herb Bread    1    7
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_Momo_HLK    1000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Double-Garlic & Herb Bread    1    7

    Sleep    2s
    Close Browser

TC_36
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Pizza_Sand_Wiches
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/39')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Philly Cheesesteak    1    11
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_Momo_HLK    1000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Philly Cheesesteak    1    11

    Sleep    2s
    Close Browser

TC_37
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Desserts
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay    
    Thanh_Toan_Tien_Vi_Momo_HLK    1000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Keto Berry-Pecan Cheesecake Bars    1    5

    Sleep    2s
    Close Browser

TC_38
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_Momo_HLK    1000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Ngoc Khanh 107 D3 Ngoc Khanh, Ba Đinh    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Brown coffee    1    3

    Sleep    2s
    Close Browser

TC_39
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/55')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Brown coffee    1    3
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    Nha so 10    Ship cho mình đến đúng giờ nhé
    Thanh_Toan_Tien_Vi_VtcPay_HLK    2000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_1_HLK    489    1234567890    Nha so 10-Thanh Tri    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Brown coffee    1    3

    Sleep    2s
    Close Browser

TC_40
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Pizza_Sand_Wiches
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/41')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Meatball & Pepperoni    1    12
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Shale Pizza Nguyen Trai 4 Ngo 332 Nguyen Trai, Thanh Xuan']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_Momo_HLK    2000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Shale Pizza Nguyen Trai 4 Ngo 332 Nguyen Trai, Thanh Xuan    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Meatball & Pepperoni    1    12

    Sleep    2s
    Close Browser

TC_41
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Breads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/31')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Asiago Herb Hoagie Rolls    1    6
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Tien_Vi_VtcPay_HLK    2000
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Asiago Herb Hoagie Rolls    1    6

    Sleep    2s
    Close Browser

TC_42
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/galicbreads?page=3
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/36')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Mushroom + Gruyere Bruschetta    1    9
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc trưa nay
    Thanh_Toan_Qua_The_Noi_Dia_HLK    9    techcombank
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    complete
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Mushroom + Gruyere Bruschetta    1    9

    Sleep    2s
    Close Browser

TC_43
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/galicbreads?page=3
    FOR    ${counter}    IN RANGE    1    6    
        Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/36')]
        Sleep    1s
        Hien_Thi_Thong_Tin_Gio_Hang
        Sleep    2s
        Go To    http://localhost:81/Shale-PIZZAzzz-master/public/galicbreads?page=3
    END
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    5
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    45

    Sleep    2s
    Close Browser

TC_44
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    1s
    Xoa_San_Pham    1
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    2
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    12

    Sleep    2s
    Close Browser

TC_45
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    Nha so 10    Yêu cầu đeo khẩu trang
    Thanh_Toan_Tien_Vi_Momo_HLK    22
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    complete
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_1_HLK    489    1234567890    Nha so 10-Thanh Tri    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Double-Garlic & Herb Bread    3    22

    Sleep    2s
    Close Browser

TC_46
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_1_HLK    Linh    Bui    hello@gmail.com    1234567890    Ha Noi    Thanh Tri    Nha so 10    Yêu cầu đeo khẩu trang
    Thanh_Toan_Qua_The_Noi_Dia_HLK    22    mbbank
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    complete
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_1_HLK    489    1234567890    Nha so 10-Thanh Tri    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Keto Berry-Pecan Cheesecake Bars    3    22

    Sleep    2s
    Close Browser

TC_47
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc 12h trưa nay
    Thanh_Toan_Tien_Vi_VtcPay_HLK    22
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    complete
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    SUPER SUPREME    3    22

    Sleep   2s
    Close Browser

TC_48
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc 12h trưa nay
    Thanh_Toan_Qua_The_Noi_Dia_HLK    25    mbbank
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    vip
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    SUPER SUPREME    3    22

    Sleep    2s
    Close Browser

TC_49
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    
    Hien_Thi_Thong_Tin_Gio_Hang
    Scroll_Cuoi_Trang

    # Verify step
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    0
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    0
    Khong_Xuat_Hien_Button_Checkout

    Sleep    2s
    Close Browser

TC_50
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    Xoa_Toan_Bo_San_Pham
    Scroll_Cuoi_Trang

    # Verify step
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    0
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    0
    Khong_Xuat_Hien_Button_Checkout

    Sleep    2s
    Close Browser

TC_51
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    SUPER SUPREME    1    10
    CLick_Btn_Breads_V2    galicbreads
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/29')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    2    Double-Garlic & Herb Bread    1    7
    CLick_Btn_Desserts_V2    dessert
    Sleep    2s
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/45')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    3    Keto Berry-Pecan Cheesecake Bars    1    5
    Sleep    2s
    CLick_Btn_Checkout
    Sleep    2s
    Thanh_Toan_Option_2_HLK    //option[@value='Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai']    Linh    Bui    hello@gmail.com    1234567890    Tôi sẽ đến lấy đồ lúc 12h trưa nay
    Thanh_Toan_Tien_Vi_VtcPay_HLK    1
    # Execute Javascript    window.open()
    # ${handles}    Get Window Handles
    # Switch Window    ${handles}[1]
    # Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    # Sleep    1s
    # Scroll_Toi_Btn_Add_New_Order
    Sleep    1s
    Check_Thanh_Toan_Thanh_Cong
    
    # Verify information in UI admin
    Di_Chuyen_Toi_Man_Hinh_Quan_Ly_Don_Hang
    Sleep    1s
    Scroll_Toi_Btn_Add_New_Order
    Check_Thong_Tin_Don_Hang_HLK    489    pending 
    Scroll_Toi_Btn_Add_New_Delive
    Check_Thong_Tin_Giao_Van_OPT_2_HLK    489    1234567890    Pizza Express Hoang Mai 52 Kim Đong, Hoang Mai    
    Scroll_Toi_Btn_Add_New_Order_Detail
    Check_San_Pham_Trong_Chi_Tiet_Don_Hang_Khi_Thanh_Toan_Thanh_Cong_HLK    Keto Berry-Pecan Cheesecake Bars    3    22

    Sleep    2s
    Close Browser

TC_52
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Check_Dang_Nhap    buithingoclinh
    CLick_Btn_Beverages_V2    beverages
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/56')]
    Hien_Thi_Thong_Tin_Gio_Hang
    Check_San_Pham_Trong_Gio_Hang_HLK    1    Mojito    1    4
    Check_Tong_So_Luong_San_Pham_Trong_Gio_Hang    1
    Check_Tong_So_Gia_Tien_San_Pham_Trong_Gio_Hang    4
    Sleep    2s
    CLick_Btn_Checkout
    Chon_Cach_Nhan_Hang_Opt1
    Click_Btn_Xac_Nhan_Thanh_Toan_Opt1

    # Verify step
    Form_Thong_Tin_Thanh_Toan_Khong_Du_Thong_Tin

    Sleep    2s
    Close Browser
    
    