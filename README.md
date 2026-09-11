# 🎯 Roblox Invisible Character

Một GUI button đơn giản cho Roblox với các tính năng:
- ✨ Nút xuất hiện ở vị trí **ngẫu nhiên** trên màn hình
- 🖱️ Có thể **kéo/di chuyển** nút bằng chuột
- 👻 **Bấm nút để tàng hình/hiển thị** character
- 👀 **Bạn vẫn thấy chính mình** ngay cả khi tàng hình
- 🔒 **Người khác không thấy bạn** khi bạn tàng hình

## 📋 Cách sử dụng

### Cách 1: Copy-Paste Code (Nhanh nhất)
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/khoalang612/roblox-invisible-button/main/InvisibleButton.lua"))()
```
- Dán vào **Command Bar** (F9) trong Roblox Studio
- Nhấn Enter → Script chạy ngay

### Cách 2: LocalScript trong Roblox Studio
1. Vào **StarterPlayer** → **StarterCharacterScripts**
2. Tạo **LocalScript** mới
3. Sao chép code từ `InvisibleButton.lua` vào script
4. Chạy game

## 🎮 Điều khiển

| Hành động | Kết quả |
|-----------|---------|
| **Kéo chuột** | Di chuyển nút |
| **Bấm nút** | Bật/tắt tàng hình character |

## 🔧 Tính năng

- ✅ Nút hiển thị ở vị trí random mỗi lần spawn
- ✅ Di chuyển nút bằng drag & drop
- ✅ Bấm nút → character tàng hình (Transparency = 1)
- ✅ Bạn vẫn thấy chính mình
- ✅ Người khác không thấy bạn
- ✅ Button text thay đổi: "Tàng Hình" ↔ "Hiển Thị"
- ✅ Button màu thay đổi: Xanh (hiển thị) ↔ Đỏ (tàng hình)

## ⚙️ Tuỳ chỉnh

Bạn có thể chỉnh sửa các thông số trong script:

```lua
button.Size = UDim2.new(0, 120, 0, 50)  -- Kích thước nút
button.BackgroundColor3 = Color3.fromRGB(0, 100, 200)  -- Màu nút (xanh)
button.Text = "Tàng Hình"  -- Text nút
button.TextSize = 14  -- Kích thước chữ
```

## 📝 License

MIT License - Bạn có thể tự do sử dụng và sửa đổi

## 🚀 Phát triển thêm

Có thể thêm các tính năng:
- Hotkey để bất/tắt (không cần bấm nút)
- Hiệu ứng fade in/out
- Settings cho Transparency
- Multiple buttons

## ⚠️ Lưu ý

- Script này chỉ hoạt động trong **Roblox Studio** hoặc **Game với admin commands**
- Nếu game không cho phép execute script, loadstring sẽ không hoạt động
- Character phải có **HumanoidRootPart** để script hoạt động

---

**Made with ❤️ for Roblox players**

## 📥 Download

- 📄 [InvisibleButton.lua](https://raw.githubusercontent.com/khoalang612/roblox-invisible-button/main/InvisibleButton.lua)
- 📄 [Loader.lua](https://raw.githubusercontent.com/khoalang612/roblox-invisible-button/main/Loader.lua)
