@echo off
chcp 65001 >nul
echo ========================================
echo  Hướng dẫn Upload lên GitHub
echo ========================================
echo.
echo Bạn có 2 lựa chọn:
echo.
echo [1] Tôi đã có thư mục repository clone về máy
echo [2] Tôi muốn hướng dẫn qua GitHub Web
echo.
set /p choice="Chọn (1 hoặc 2): "

if "%choice%"=="1" (
    echo.
    echo Nhập đường dẫn đến thư mục repository đã clone:
    echo Ví dụ: C:\Users\ad\Desktop\Sao-Viet
    set /p repo_path="Đường dẫn: "
    
    if not exist "%repo_path%" (
        echo Lỗi: Không tìm thấy thư mục!
        pause
        exit
    )
    
    echo.
    echo Đang copy file...
    copy "index.html" "%repo_path%\"
    copy "manifest.json" "%repo_path%\"
    copy "service-worker.js" "%repo_path%\"
    copy "icon-192.png" "%repo_path%\"
    copy "icon-512.png" "%repo_path%\"
    copy "apple-touch-icon.png" "%repo_path%\"
    copy "README.md" "%repo_path%\"
    
    echo.
    echo Đã copy xong! Bây giờ vào thư mục repository và chạy:
    echo   git add .
    echo   git commit -m "Update all files"
    echo   git push origin main
    echo.
    cd "%repo_path%"
    cmd /k
) else if "%choice%"=="2" (
    echo.
    echo ========================================
    echo  HƯỚNG DẪN QUA GITHUB WEB:
    echo ========================================
    echo.
    echo BƯỚC 1: XÓA TẤT CẢ FILE CŨ
    echo   1. Vào repository trên GitHub
    echo   2. Click vào từng file
    echo   3. Click nút "Delete" (thùng rác)
    echo   4. Nhập: "Delete all old files"
    echo   5. Click "Commit changes"
    echo   6. Lặp lại cho TẤT CẢ file
    echo.
    echo BƯỚC 2: UPLOAD FILE MỚI
    echo   1. Ở trang chính repository (sau khi xóa hết)
    echo   2. Click "Add file" ^> "Upload files"
    echo   3. Kéo thả TẤT CẢ file từ thư mục này:
    echo      - index.html
    echo      - manifest.json
    echo      - service-worker.js
    echo      - icon-192.png
    echo      - icon-512.png
    echo      - apple-touch-icon.png
    echo      - README.md
    echo   4. Nhập: "Upload all new files"
    echo   5. Click "Commit changes"
    echo.
    pause
) else (
    echo Lựa chọn không hợp lệ!
    pause
)

