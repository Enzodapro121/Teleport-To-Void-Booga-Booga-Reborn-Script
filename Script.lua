

local ScreenGui = Instance.new("ScreenGui")
local VoidFrame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local CoreGui = game:GetService("CoreGui")

ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

VoidFrame.Name = "VoidFrame"
VoidFrame.Parent = ScreenGui
VoidFrame.BackgroundColor3 = Color3.fromRGB(105, 10, 118)
VoidFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
VoidFrame.BorderSizePixel = 0
VoidFrame.Position = UDim2.new(0.00675067538, 0, 0.566510677, 0)
VoidFrame.Size = UDim2.new(0, 421, 0, 246)

TextButton.Parent = VoidFrame
TextButton.BackgroundColor3 = Color3.fromRGB(198, 10, 250)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.191646472, 0, 0.597169697, 0)
TextButton.Size = UDim2.new(0, 256, 0, 67)
TextButton.Font = Enum.Font.Highway
TextButton.Text = "TELEPORT"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextLabel.Parent = VoidFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(58, 4, 67)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.10838709, 0, 0.119263686, 0)
TextLabel.Size = UDim2.new(0, 328, 0, 107)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "VOIDNESS"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton_2.Parent = VoidFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.937730789, 0, -0.104400389, 0)
TextButton_2.Size = UDim2.new(0, 58, 0, 55)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "X"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

local function ActivateAllFunctions ()

	TextButton.MouseButton1Down:Connect(function()
		local Players = game:GetService("Players")
		local TeleportService = game:GetService("TeleportService")
		local player = Players.LocalPlayer

		local destinationPlaceId = 11879754496 

		local function teleportToGame()
			TeleportService:Teleport(destinationPlaceId, player) 
		end
		TextButton.Text = "Teleporting."
		wait(1)
		TextButton.Text = "Teleporting.."
		wait(1)
		TextButton.Text = "Teleporting..."
		wait(1)
		teleportToGame()
	end)

	TextButton_2.MouseButton1Down:Connect(function()
		VoidFrame.Visible = not VoidFrame.Visible
	end)

end

ActivateAllFunctions()
