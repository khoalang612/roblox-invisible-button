-- Roblox Invisible Button GUI
-- LocalScript - Place in StarterPlayer > StarterCharacterScripts or StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InvisibleButtonGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Create Button Frame
local button = Instance.new("TextButton")
button.Name = "InvisibleButton"
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

-- Mouse events for dragging
local mouse = player:GetMouse()

button.MouseButton1Down:Connect(function()
	-- Check if clicking on button to hide or dragging
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

UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		if dragging then
			-- Check if button was actually dragged or just clicked
			local currentPos = button.Position
			if currentPos == startPos then
				-- Button was clicked (not dragged) -> hide it
				button.Visible = false
				screenGui:Destroy()
				print("Button tàng hình!")
			end
			dragging = false
		end
	end
end)

print("✅ Invisible Button GUI loaded! Click to hide, drag to move.")
