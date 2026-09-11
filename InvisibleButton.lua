-- Roblox Invisible Character GUI
-- LocalScript - Can be placed anywhere

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

-- Wait for PlayerGui first
if not player:WaitForChild("PlayerGui", 5) then
	print("❌ Error: PlayerGui tidak load!")
	return
end

-- Then wait for character
local character = player.Character
if not character then
	print("⏳ Chờ character load...")
	character = player.CharacterAdded:Wait()
end

print("✅ Character loaded!")

-- Check if HumanoidRootPart exists
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
if not humanoidRootPart then
	print("❌ Error: HumanoidRootPart không tìm thấy!")
	return
end

local playerGui = player:FindFirstChild("PlayerGui")
if not playerGui then
	print("❌ Error: PlayerGui không tìm thấy!")
	return
end

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InvisibleCharGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create Button Frame
local button = Instance.new("TextButton")
button.Name = "InvisibleToggleButton"
button.Size = UDim2.new(0, 120, 0, 50)
button.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Text = "Tàng Hình"
button.Font = Enum.Font.GothamBold
button.TextSize = 14
button.BorderSizePixel = 0
button.Parent = screenGui

-- Random position
local function getRandomPosition()
	local randomX = math.random(50, screenGui.AbsoluteSize.X - 150)
	local randomY = math.random(50, screenGui.AbsoluteSize.Y - 100)
	return UDim2.new(0, randomX, 0, randomY)
end

button.Position = getRandomPosition()

-- Dragging variables
local dragging = false
local dragStart = nil
local startPos = nil
local isInvisible = false

-- Mouse events for dragging
local mouse = player:GetMouse()

button.MouseButton1Down:Connect(function()
	dragging = true
	dragStart = mouse.X - button.AbsolutePosition.X
	startPos = button.Position
end)

UserInputService.InputChanged:Connect(function(input, gameProcessed)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local newX = mouse.X - dragStart
		local newY = mouse.Y - (button.AbsoluteSize.Y / 2)
		button.Position = UDim2.new(0, newX, 0, newY)
	end
end)

-- Function to make character invisible
local function toggleInvisibility()
	isInvisible = not isInvisible
	
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			if isInvisible then
				-- Tàng hình
				part.Transparency = 1
			else
				-- Hiện lại (reset transparency)
				part.Transparency = 0
			end
		end
	end
	
	-- Update button text
	button.Text = isInvisible and "Hiển Thị" or "Tàng Hình"
	button.BackgroundColor3 = isInvisible and Color3.fromRGB(200, 0, 0) or Color3.fromRGB(0, 100, 200)
	
	print(isInvisible and "✅ Character tàng hình!" or "✅ Character hiển thị!")
end

UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		if dragging then
			-- Check if button was actually dragged or just clicked
			local currentPos = button.Position
			if currentPos == startPos then
				-- Button was clicked (not dragged) -> toggle invisibility
				toggleInvisibility()
			end
			dragging = false
		end
	end
end)

print("✅ Invisible Character GUI loaded!")
print("👉 Kéo nút để di chuyển, bấm nút để bật/tắt tàng hình")
