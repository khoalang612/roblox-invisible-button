# 🎯 Roblox Invisible Button

Một GUI button đơn giản cho Roblox với các tính năng:
- ✨ Nút xuất hiện ở vị trí **ngẫu nhiên** trên màn hình
- 🖱️ Có thể **kéo/di chuyển** nút bằng chuột
- 👻 **Bấm nút để tàng hình** (nút biến mất)
- 🔒 Chỉ hiển thị cho **riêng bạn** (LocalScript)

## 📋 Cách sử dụng

### 1. Copy code
Sao chép đoạn code từ file `InvisibleButton.lua`

### 2. Tạo LocalScript trong Roblox Studio
- Vào **StarterPlayer** > **StarterPlayerScripts** (hoặc **StarterCharacterScripts**)
- Tạo một **LocalScript** mới
- Dán code vào script đó

### 3. Chạy game
- Nút sẽ xuất hiện ở vị trí random
- Kéo nút để di chuyển
- Bấm nút để nó tàng hình

## 🎮 Điều khiển

| Hành động | Kết quả |
|-----------|---------|
| **Kéo chuột** | Di chuyển nút |
| **Bấm nút** | Nút tàng hình (mất luôn) |

## 💻 Code Structure

```lua
-- Tạo ScreenGui (chỉ hiển thị cho player)
-- Tạo TextButton với vị trí random
-- Hỗ trợ drag (kéo) nút
-- Click nút → Visible = false → Tàng hình
```

## ⚙️ Tuỳ chỉnh

Bạn có thể chỉnh sửa các thông số:

```lua
button.Size = UDim2.new(0, 120, 0, 50)  -- Kích thước nút
button.BackgroundColor3 = Color3.fromRGB(0, 100, 200)  -- Màu nút
button.Text = "Tàng Hình"  -- Text nút
```

## 📝 License

MIT License - Bạn có thể tự do sử dụng và sửa đổi

## 🚀 Phát triển thêm

Có thể thêm các tính năng:
- Hotkey để bật lại nút
- Nhiều nút khác nhau
- Animation khi nút biến mất
- Settings panel

---

**Made with ❤️ for Roblox players**
