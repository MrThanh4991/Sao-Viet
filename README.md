# Sao Việt PWA

## Hướng dẫn Deploy

1. Upload tất cả file này lên GitHub (branch `main`).
2. Vào Settings → Pages → Deploy from branch, chọn `main` và `/root`.
3. Sau 1–2 phút, vào link GitHub Pages để cài như app.

## Hướng dẫn XÓA HẾT và UPLOAD LẠI TOÀN BỘ FILE

### Cách 1: Qua giao diện GitHub (Đơn giản nhất)

**Bước 1: Xóa tất cả file cũ**
1. Vào repository trên GitHub
2. Vào từng file một, click nút **"Delete"** (icon thùng rác)
3. Nhập commit message: "Delete all old files"
4. Click **"Commit changes"**
5. Lặp lại cho TẤT CẢ các file trong repository

**Bước 2: Upload tất cả file mới**
1. Ở trang chính repository (sau khi xóa hết, sẽ trống)
2. Click nút **"Add file"** → **"Upload files"**
3. Kéo thả TẤT CẢ các file từ thư mục `sao-viet-pwa` vào:
   - `index.html`
   - `manifest.json`
   - `service-worker.js`
   - `icon-192.png`
   - `icon-512.png`
   - `apple-touch-icon.png`
   - `README.md`
4. Kéo xuống dưới, nhập commit message: "Upload all new files"
5. Click **"Commit changes"**

### Cách 2: Dùng Git Commands (Nhanh và tự động)

**Nếu bạn đã có Git và repository đã clone về máy:**

```bash
# 1. Vào thư mục repository đã clone
cd Sao-Viet

# 2. Xóa TẤT CẢ file cũ
git rm -r *

# 3. Copy TẤT CẢ file mới từ thư mục sao-viet-pwa vào đây
# (Copy tất cả file: index.html, manifest.json, service-worker.js, 
#  icon-192.png, icon-512.png, apple-touch-icon.png, README.md)

# 4. Thêm tất cả file mới
git add .

# 5. Commit
git commit -m "Replace all files with new version"

# 6. Push lên GitHub
git push origin main
```

**Nếu chưa clone repository:**

Xem script tự động bên dưới ⬇️

### Lưu ý:
- Sau khi push, GitHub Pages sẽ tự động cập nhật sau 1-2 phút
- Nếu không thấy thay đổi, thử xóa cache trình duyệt (Ctrl+Shift+Delete)
