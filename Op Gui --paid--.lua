-- Gui to Lua
-- Version: 3.2

-- Instances:

local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local player = Players.LocalPlayer
local SHIRT_ID = 17745689249

local success, ownsShirt = pcall(function()
	return MarketplaceService:PlayerOwnsAssetAsync(player, SHIRT_ID)
end)

if not success or not ownsShirt then
	StarterGui:SetCore("SendNotification", {
		Title = "Access Denied",
		Text = "You need the shirt!",
		Duration = 5
	})
	return
end
local TextLabel = Instance.new("TextLabel")
local TextLabel1 = Instance.new("TextLabel")
local AboutFrame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel1 = Instance.new("ImageLabel")
local ImageLabel2 = Instance.new("ImageLabel")
local ExEFrame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local CodeBox = Instance.new("TextBox")
local RunButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local FakeChatFrame = Instance.new("Frame")
local NameBox = Instance.new("TextBox")
local MessageBox = Instance.new("TextBox")
local SayButton = Instance.new("TextButton")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local About = Instance.new("TextButton")
local ExE = Instance.new("TextButton")
local Fakechat = Instance.new("TextButton")
local MoreGui = Instance.new("TextButton")
local FE = Instance.new("TextButton")
local MoreFrame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton1 = Instance.new("TextButton")
local TextButton2 = Instance.new("TextButton")
local TextButton3 = Instance.new("TextButton")
local TextButton4 = Instance.new("TextButton")
local TextButton5 = Instance.new("TextButton")
local TextButton6 = Instance.new("TextButton")
local TextButton7 = Instance.new("TextButton")
local TextButton8 = Instance.new("TextButton")
local FEFrame = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local TextButton1_2 = Instance.new("TextButton")
local TextButton2_2 = Instance.new("TextButton")
local TextButton3_2 = Instance.new("TextButton")
local TextButton4_2 = Instance.new("TextButton")
local TextButton5_2 = Instance.new("TextButton")
local TextButton6_2 = Instance.new("TextButton")
local TextButton7_2 = Instance.new("TextButton")
local TextButton8_2 = Instance.new("TextButton")
local Toggle = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 3
MainFrame.Position = UDim2.new(0.328345805, 0, 0.232095495, 0)
MainFrame.Size = UDim2.new(0, 425, 0, 260)

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
TopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopFrame.BorderSizePixel = 3
TopFrame.Size = UDim2.new(0, 425, 0, 40)

Close.Name = "Close"
Close.Parent = TopFrame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 21)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 3
Close.Size = UDim2.new(0, 37, 0, 40)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

TextLabel.Parent = TopFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.101176471, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 40)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Super Op 8x gui -paid-"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = TopFrame
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.BackgroundTransparency = 1.000
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.Position = UDim2.new(0.70588237, 0, 0, 0)
TextLabel1.Size = UDim2.new(0, 200, 0, 40)
TextLabel1.Font = Enum.Font.Cartoon
TextLabel1.Text = "v1"
TextLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.TextScaled = true
TextLabel1.TextSize = 14.000
TextLabel1.TextWrapped = true

AboutFrame.Name = "AboutFrame"
AboutFrame.Parent = MainFrame
AboutFrame.BackgroundColor3 = Color3.fromRGB(191, 191, 191)
AboutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
AboutFrame.BorderSizePixel = 0
AboutFrame.Position = UDim2.new(0.281339049, 0, 0.203846157, 0)
AboutFrame.Size = UDim2.new(0, 288, 0, 197)

TextLabel_2.Parent = AboutFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.055555556, 0, 0.0355329961, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Created By 8x8x8x8x8x8x8x8"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ImageLabel.Parent = AboutFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 3
ImageLabel.Position = UDim2.new(0.597222209, 0, 0.0710659921, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxassetid://131259450173720"

ImageLabel1.Name = "ImageLabel1"
ImageLabel1.Parent = AboutFrame
ImageLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel1.BorderSizePixel = 0
ImageLabel1.Position = UDim2.new(0.03125, 0, 0.32487309, 0)
ImageLabel1.Size = UDim2.new(0, 151, 0, 125)
ImageLabel1.Image = "rbxassetid://6862780932"

ImageLabel2.Name = "ImageLabel2"
ImageLabel2.Parent = AboutFrame
ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel2.BorderSizePixel = 0
ImageLabel2.Position = UDim2.new(0.597222209, 0, 0.644670069, 0)
ImageLabel2.Size = UDim2.new(0, 100, 0, 62)
ImageLabel2.Image = "rbxassetid://141309138"

ExEFrame.Name = "ExEFrame"
ExEFrame.Parent = MainFrame
ExEFrame.BackgroundColor3 = Color3.fromRGB(191, 191, 191)
ExEFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExEFrame.BorderSizePixel = 0
ExEFrame.Position = UDim2.new(0.281339049, 0, 0.203846157, 0)
ExEFrame.Size = UDim2.new(0, 288, 0, 197)
ExEFrame.Visible = false

ScrollingFrame.Parent = ExEFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 288, 0, 141)

CodeBox.Name = "CodeBox"
CodeBox.Parent = ScrollingFrame
CodeBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CodeBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
CodeBox.BorderSizePixel = 3
CodeBox.Size = UDim2.new(0, 275, 0, 394)
CodeBox.Font = Enum.Font.SourceSans
CodeBox.MultiLine = true
CodeBox.Text = ""
CodeBox.TextColor3 = Color3.fromRGB(0, 0, 0)
CodeBox.TextSize = 14.000
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top

RunButton.Name = "RunButton"
RunButton.Parent = ExEFrame
RunButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RunButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RunButton.BorderSizePixel = 3
RunButton.Position = UDim2.new(0.0625, 0, 0.761421323, 0)
RunButton.Size = UDim2.new(0, 105, 0, 39)
RunButton.Font = Enum.Font.Cartoon
RunButton.Text = "Execute"
RunButton.TextColor3 = Color3.fromRGB(0, 0, 0)
RunButton.TextScaled = true
RunButton.TextSize = 14.000
RunButton.TextWrapped = true

ClearButton.Name = "ClearButton"
ClearButton.Parent = ExEFrame
ClearButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.BorderSizePixel = 3
ClearButton.Position = UDim2.new(0.510416687, 0, 0.761421323, 0)
ClearButton.Size = UDim2.new(0, 105, 0, 39)
ClearButton.Font = Enum.Font.Cartoon
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.TextScaled = true
ClearButton.TextSize = 14.000
ClearButton.TextWrapped = true

FakeChatFrame.Name = "FakeChatFrame"
FakeChatFrame.Parent = MainFrame
FakeChatFrame.BackgroundColor3 = Color3.fromRGB(191, 191, 191)
FakeChatFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FakeChatFrame.BorderSizePixel = 0
FakeChatFrame.Position = UDim2.new(0.281339049, 0, 0.203846157, 0)
FakeChatFrame.Size = UDim2.new(0, 288, 0, 197)
FakeChatFrame.Visible = false

NameBox.Name = "NameBox"
NameBox.Parent = FakeChatFrame
NameBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameBox.BorderSizePixel = 3
NameBox.Position = UDim2.new(0.0347222239, 0, 0.0710659921, 0)
NameBox.Size = UDim2.new(0, 267, 0, 50)
NameBox.Font = Enum.Font.SourceSans
NameBox.Text = "Name"
NameBox.TextColor3 = Color3.fromRGB(0, 0, 0)
NameBox.TextSize = 14.000

MessageBox.Name = "MessageBox"
MessageBox.Parent = FakeChatFrame
MessageBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MessageBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
MessageBox.BorderSizePixel = 3
MessageBox.Position = UDim2.new(0.0347222239, 0, 0.380710661, 0)
MessageBox.Size = UDim2.new(0, 267, 0, 50)
MessageBox.Font = Enum.Font.SourceSans
MessageBox.Text = "WhatTheySay"
MessageBox.TextColor3 = Color3.fromRGB(0, 0, 0)
MessageBox.TextSize = 14.000

SayButton.Name = "SayButton"
SayButton.Parent = FakeChatFrame
SayButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SayButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SayButton.BorderSizePixel = 3
SayButton.Position = UDim2.new(0.159722224, 0, 0.705583751, 0)
SayButton.Size = UDim2.new(0, 199, 0, 50)
SayButton.Font = Enum.Font.Cartoon
SayButton.Text = "Say"
SayButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SayButton.TextScaled = true
SayButton.TextSize = 14.000
SayButton.TextWrapped = true

ScrollingFrame_2.Parent = MainFrame
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 3
ScrollingFrame_2.Position = UDim2.new(0, 0, 0.176923081, 0)
ScrollingFrame_2.Size = UDim2.new(0, 100, 0, 214)

About.Name = "About"
About.Parent = ScrollingFrame_2
About.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
About.BorderColor3 = Color3.fromRGB(0, 0, 0)
About.BorderSizePixel = 0
About.Position = UDim2.new(0.0900000036, 0, 0.0134615386, 0)
About.Size = UDim2.new(0, 67, 0, 50)
About.Font = Enum.Font.Cartoon
About.Text = "About"
About.TextColor3 = Color3.fromRGB(0, 0, 0)
About.TextScaled = true
About.TextSize = 14.000
About.TextWrapped = true

ExE.Name = "ExE"
ExE.Parent = ScrollingFrame_2
ExE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExE.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExE.BorderSizePixel = 0
ExE.Position = UDim2.new(0.0900000036, 0, 0.136538461, 0)
ExE.Size = UDim2.new(0, 67, 0, 50)
ExE.Font = Enum.Font.Cartoon
ExE.Text = "ExE"
ExE.TextColor3 = Color3.fromRGB(0, 0, 0)
ExE.TextScaled = true
ExE.TextSize = 14.000
ExE.TextWrapped = true

Fakechat.Name = "Fake chat"
Fakechat.Parent = ScrollingFrame_2
Fakechat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Fakechat.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fakechat.BorderSizePixel = 0
Fakechat.Position = UDim2.new(0.0900000036, 0, 0.26346153, 0)
Fakechat.Size = UDim2.new(0, 67, 0, 50)
Fakechat.Font = Enum.Font.Cartoon
Fakechat.Text = "Fake Chat"
Fakechat.TextColor3 = Color3.fromRGB(0, 0, 0)
Fakechat.TextScaled = true
Fakechat.TextSize = 14.000
Fakechat.TextWrapped = true

MoreGui.Name = "MoreGui"
MoreGui.Parent = ScrollingFrame_2
MoreGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MoreGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
MoreGui.BorderSizePixel = 0
MoreGui.Position = UDim2.new(0.0900000036, 0, 0.391346157, 0)
MoreGui.Size = UDim2.new(0, 67, 0, 50)
MoreGui.Font = Enum.Font.Cartoon
MoreGui.Text = "Past 8x Gui's"
MoreGui.TextColor3 = Color3.fromRGB(0, 0, 0)
MoreGui.TextScaled = true
MoreGui.TextSize = 14.000
MoreGui.TextWrapped = true

FE.Name = "FE"
FE.Parent = ScrollingFrame_2
FE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FE.BorderColor3 = Color3.fromRGB(0, 0, 0)
FE.BorderSizePixel = 0
FE.Position = UDim2.new(0.0900000036, 0, 0.529807687, 0)
FE.Size = UDim2.new(0, 67, 0, 50)
FE.Font = Enum.Font.Cartoon
FE.Text = "FE"
FE.TextColor3 = Color3.fromRGB(0, 0, 0)
FE.TextScaled = true
FE.TextSize = 14.000
FE.TextWrapped = true

MoreFrame.Name = "MoreFrame"
MoreFrame.Parent = MainFrame
MoreFrame.BackgroundColor3 = Color3.fromRGB(191, 191, 191)
MoreFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MoreFrame.BorderSizePixel = 0
MoreFrame.Position = UDim2.new(0.281339049, 0, 0.203846157, 0)
MoreFrame.Size = UDim2.new(0, 288, 0, 197)
MoreFrame.Visible = false

TextButton.Parent = MoreFrame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.0416666679, 0, 0.0710659921, 0)
TextButton.Size = UDim2.new(0, 78, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "PullMOD"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton1.Name = "TextButton1"
TextButton1.Parent = MoreFrame
TextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.BorderSizePixel = 3
TextButton1.Position = UDim2.new(0.364583343, 0, 0.0710659921, 0)
TextButton1.Size = UDim2.new(0, 78, 0, 50)
TextButton1.Font = Enum.Font.SourceSans
TextButton1.Text = "Sound Gui"
TextButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.TextScaled = true
TextButton1.TextSize = 14.000
TextButton1.TextWrapped = true

TextButton2.Name = "TextButton2"
TextButton2.Parent = MoreFrame
TextButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.BorderSizePixel = 3
TextButton2.Position = UDim2.new(0.701388896, 0, 0.0710659921, 0)
TextButton2.Size = UDim2.new(0, 78, 0, 50)
TextButton2.Font = Enum.Font.SourceSans
TextButton2.Text = "Fling Gui"
TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.TextScaled = true
TextButton2.TextSize = 14.000
TextButton2.TextWrapped = true

TextButton3.Name = "TextButton3"
TextButton3.Parent = MoreFrame
TextButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton3.BorderSizePixel = 3
TextButton3.Position = UDim2.new(0.0416666679, 0, 0.406091362, 0)
TextButton3.Size = UDim2.new(0, 78, 0, 50)
TextButton3.Font = Enum.Font.SourceSans
TextButton3.Text = "Ban Menu --Client--"
TextButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton3.TextScaled = true
TextButton3.TextSize = 14.000
TextButton3.TextWrapped = true

TextButton4.Name = "TextButton4"
TextButton4.Parent = MoreFrame
TextButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton4.BorderSizePixel = 3
TextButton4.Position = UDim2.new(0.364583343, 0, 0.406091362, 0)
TextButton4.Size = UDim2.new(0, 78, 0, 50)
TextButton4.Font = Enum.Font.SourceSans
TextButton4.Text = "Fe Bypass --Patched--"
TextButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton4.TextScaled = true
TextButton4.TextSize = 14.000
TextButton4.TextWrapped = true

TextButton5.Name = "TextButton5"
TextButton5.Parent = MoreFrame
TextButton5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton5.BorderSizePixel = 3
TextButton5.Position = UDim2.new(0.701388896, 0, 0.406091362, 0)
TextButton5.Size = UDim2.new(0, 78, 0, 50)
TextButton5.Font = Enum.Font.SourceSans
TextButton5.Text = "8x Super Menu --Broken--"
TextButton5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton5.TextScaled = true
TextButton5.TextSize = 14.000
TextButton5.TextWrapped = true

TextButton6.Name = "TextButton6"
TextButton6.Parent = MoreFrame
TextButton6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton6.BorderSizePixel = 3
TextButton6.Position = UDim2.new(0.0416666679, 0, 0.741116762, 0)
TextButton6.Size = UDim2.new(0, 78, 0, 43)
TextButton6.Font = Enum.Font.SourceSans
TextButton6.Text = "Tp Menu"
TextButton6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton6.TextScaled = true
TextButton6.TextSize = 14.000
TextButton6.TextWrapped = true

TextButton7.Name = "TextButton7"
TextButton7.Parent = MoreFrame
TextButton7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton7.BorderSizePixel = 3
TextButton7.Position = UDim2.new(0.364583343, 0, 0.741116762, 0)
TextButton7.Size = UDim2.new(0, 78, 0, 43)
TextButton7.Font = Enum.Font.SourceSans
TextButton7.Text = "Prison Life"
TextButton7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton7.TextScaled = true
TextButton7.TextSize = 14.000
TextButton7.TextWrapped = true

TextButton8.Name = "TextButton8"
TextButton8.Parent = MoreFrame
TextButton8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton8.BorderSizePixel = 3
TextButton8.Position = UDim2.new(0.701388896, 0, 0.741116762, 0)
TextButton8.Size = UDim2.new(0, 78, 0, 43)
TextButton8.Font = Enum.Font.SourceSans
TextButton8.Text = "Part Fling"
TextButton8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton8.TextScaled = true
TextButton8.TextSize = 14.000
TextButton8.TextWrapped = true

FEFrame.Name = "FEFrame"
FEFrame.Parent = MainFrame
FEFrame.BackgroundColor3 = Color3.fromRGB(191, 191, 191)
FEFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FEFrame.BorderSizePixel = 0
FEFrame.Position = UDim2.new(0.281339049, 0, 0.203846157, 0)
FEFrame.Size = UDim2.new(0, 288, 0, 197)
FEFrame.Visible = false

TextButton_2.Parent = FEFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.0416666679, 0, 0.0710659921, 0)
TextButton_2.Size = UDim2.new(0, 78, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Drop Kick"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton1_2.Name = "TextButton1"
TextButton1_2.Parent = FEFrame
TextButton1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton1_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton1_2.BorderSizePixel = 3
TextButton1_2.Position = UDim2.new(0.364583343, 0, 0.0710659921, 0)
TextButton1_2.Size = UDim2.new(0, 78, 0, 50)
TextButton1_2.Font = Enum.Font.SourceSans
TextButton1_2.Text = "R6"
TextButton1_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton1_2.TextScaled = true
TextButton1_2.TextSize = 14.000
TextButton1_2.TextWrapped = true

TextButton2_2.Name = "TextButton2"
TextButton2_2.Parent = FEFrame
TextButton2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton2_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton2_2.BorderSizePixel = 3
TextButton2_2.Position = UDim2.new(0.697916687, 0, 0.0710659921, 0)
TextButton2_2.Size = UDim2.new(0, 78, 0, 50)
TextButton2_2.Font = Enum.Font.SourceSans
TextButton2_2.Text = "Desync"
TextButton2_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton2_2.TextScaled = true
TextButton2_2.TextSize = 14.000
TextButton2_2.TextWrapped = true

TextButton3_2.Name = "TextButton3"
TextButton3_2.Parent = FEFrame
TextButton3_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton3_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton3_2.BorderSizePixel = 3
TextButton3_2.Position = UDim2.new(0.0416666679, 0, 0.380710661, 0)
TextButton3_2.Size = UDim2.new(0, 78, 0, 50)
TextButton3_2.Font = Enum.Font.SourceSans
TextButton3_2.Text = "Part Tornado"
TextButton3_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton3_2.TextScaled = true
TextButton3_2.TextSize = 14.000
TextButton3_2.TextWrapped = true

TextButton4_2.Name = "TextButton4"
TextButton4_2.Parent = FEFrame
TextButton4_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton4_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton4_2.BorderSizePixel = 3
TextButton4_2.Position = UDim2.new(0.364583343, 0, 0.380710661, 0)
TextButton4_2.Size = UDim2.new(0, 78, 0, 50)
TextButton4_2.Font = Enum.Font.SourceSans
TextButton4_2.Text = "Invis Gui"
TextButton4_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton4_2.TextScaled = true
TextButton4_2.TextSize = 14.000
TextButton4_2.TextWrapped = true

TextButton5_2.Name = "TextButton5"
TextButton5_2.Parent = FEFrame
TextButton5_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton5_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton5_2.BorderSizePixel = 3
TextButton5_2.Position = UDim2.new(0.697916687, 0, 0.380710661, 0)
TextButton5_2.Size = UDim2.new(0, 78, 0, 50)
TextButton5_2.Font = Enum.Font.SourceSans
TextButton5_2.Text = "Wither Storm"
TextButton5_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton5_2.TextScaled = true
TextButton5_2.TextSize = 14.000
TextButton5_2.TextWrapped = true

TextButton6_2.Name = "TextButton6"
TextButton6_2.Parent = FEFrame
TextButton6_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton6_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton6_2.BorderSizePixel = 3
TextButton6_2.Position = UDim2.new(0.0416666679, 0, 0.710659921, 0)
TextButton6_2.Size = UDim2.new(0, 78, 0, 50)
TextButton6_2.Font = Enum.Font.SourceSans
TextButton6_2.Text = "Op Finality"
TextButton6_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton6_2.TextScaled = true
TextButton6_2.TextSize = 14.000
TextButton6_2.TextWrapped = true

TextButton7_2.Name = "TextButton7"
TextButton7_2.Parent = FEFrame
TextButton7_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton7_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton7_2.BorderSizePixel = 3
TextButton7_2.Position = UDim2.new(0.364583343, 0, 0.710659921, 0)
TextButton7_2.Size = UDim2.new(0, 78, 0, 50)
TextButton7_2.Font = Enum.Font.SourceSans
TextButton7_2.Text = "MM2 Gui"
TextButton7_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton7_2.TextScaled = true
TextButton7_2.TextSize = 14.000
TextButton7_2.TextWrapped = true

TextButton8_2.Name = "TextButton8"
TextButton8_2.Parent = FEFrame
TextButton8_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton8_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton8_2.BorderSizePixel = 3
TextButton8_2.Position = UDim2.new(0.697916687, 0, 0.710659921, 0)
TextButton8_2.Size = UDim2.new(0, 78, 0, 50)
TextButton8_2.Font = Enum.Font.SourceSans
TextButton8_2.Text = "Doors Gui"
TextButton8_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton8_2.TextScaled = true
TextButton8_2.TextSize = 14.000
TextButton8_2.TextWrapped = true

Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.904405653, 0, 0.905835569, 0)
Toggle.Size = UDim2.new(0, 96, 0, 50)
Toggle.Font = Enum.Font.Cartoon
Toggle.Text = "Toggle Gui"
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true

-- Scripts:

local function SKSKAI_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local function log(message)
		print("[GUI LOADER] " .. message)
	end
	
	log("10%")
	task.wait(1)
	
	log("25%")
	task.wait(1)
	
	log("50%")
	task.wait(1)
	
	log("75%")
	task.wait(1)
	
	log("100%")
	task.wait(1)
	
	log("Gui Loaded")
end
coroutine.wrap(SKSKAI_fake_script)()
local function SSOMSVQ_fake_script() -- MainFrame.Draggable 
	local script = Instance.new('LocalScript', MainFrame)

	local UIS = game:GetService("UserInputService")
	local f = script.Parent
	local d, s, p
	
	f.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then
			d, s, p = true, i.Position, f.Position
		end
	end)
	
	UIS.InputChanged:Connect(function(i)
		if d and i.UserInputType == Enum.UserInputType.MouseMovement then
			local x = i.Position - s
			f.Position = UDim2.new(p.X.Scale, p.X.Offset + x.X, p.Y.Scale, p.Y.Offset + x.Y)
		end
	end)
	
	UIS.InputEnded:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton1 then d = false end
	end)
end
coroutine.wrap(SSOMSVQ_fake_script)()
local function UZZNO_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	local button = script.Parent
	local gui = button:FindFirstAncestorOfClass("ScreenGui")
	
	button.MouseButton1Click:Connect(function()
		gui:Destroy()
	end)
	
end
coroutine.wrap(UZZNO_fake_script)()
local function LKMQR_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(LKMQR_fake_script)()
local function YSPOLB_fake_script() -- TextLabel1.LocalScript 
	local script = Instance.new('LocalScript', TextLabel1)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(YSPOLB_fake_script)()
local function TARAFG_fake_script() -- TextLabel_2.LocalScript1 
	local script = Instance.new('LocalScript', TextLabel_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(TARAFG_fake_script)()
local function UXUEU_fake_script() -- RunButton.LocalScript 
	local script = Instance.new('LocalScript', RunButton)

	local button = script.Parent
	local gui = button:FindFirstAncestorOfClass("ScreenGui")
	
	button.MouseButton1Click:Connect(function()
		local codeBox = gui:FindFirstChild("CodeBox", true)
	
		if codeBox then
			local code = codeBox.Text
	
			print("Code entered:")
			print(code)
		else
			warn("CodeBox was not found!")
		end
	end)
end
coroutine.wrap(UXUEU_fake_script)()
local function XJZEG_fake_script() -- RunButton.LocalScript2 
	local script = Instance.new('LocalScript', RunButton)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(XJZEG_fake_script)()
local function GLIMVO_fake_script() -- ClearButton.LocalScript 
	local script = Instance.new('LocalScript', ClearButton)

	local button = script.Parent
	local gui = button:FindFirstAncestorOfClass("ScreenGui")
	
	button.MouseButton1Click:Connect(function()
		local codeBox = gui:FindFirstChild("CodeBox", true)
	
		if codeBox then
			codeBox.Text = ""
		else
			warn("CodeBox was not found!")
		end
	end)
end
coroutine.wrap(GLIMVO_fake_script)()
local function CRQN_fake_script() -- ClearButton.LocalScript1 
	local script = Instance.new('LocalScript', ClearButton)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(CRQN_fake_script)()
local function UEMFSBU_fake_script() -- SayButton.LocalScript 
	local script = Instance.new('LocalScript', SayButton)

	local TextChatService = game:GetService("TextChatService")
	local Players = game:GetService("Players")
	
	local button = script.Parent
	local frame = button.Parent
	
	local nameBox = frame:WaitForChild("NameBox")
	local messageBox = frame:WaitForChild("MessageBox")
	
	button.MouseButton1Click:Connect(function()
		local playerName = nameBox.Text
		local message = messageBox.Text
	
		if playerName == "" or message == "" then
			return
		end
	
		local target = Players:FindFirstChild(playerName)
	
		if not target then
			warn("Player not found: " .. playerName)
			return
		end
	
		local character = target.Character
	
		if not character then
			return
		end
	
		local head = character:FindFirstChild("Head")
	
		if not head then
			return
		end
	
		-- Display Roblox's built-in bubble locally
		TextChatService:DisplayBubble(head, message)
	end)
end
coroutine.wrap(UEMFSBU_fake_script)()
local function XYIUGK_fake_script() -- SayButton.LocalScript1 
	local script = Instance.new('LocalScript', SayButton)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(XYIUGK_fake_script)()
local function QRHLHGP_fake_script() -- About.LocalScript2 
	local script = Instance.new('LocalScript', About)

	local button = script.Parent
	
	local framesToHide = {
		button.Parent.Parent.ExEFrame,
		button.Parent.Parent.FakeChatFrame,
		button.Parent.Parent.MoreFrame,
		button.Parent.Parent.FEFrame,
	}
	
	local frameToShow = button.Parent.Parent.AboutFrame
	
	button.MouseButton1Click:Connect(function()
	
		-- Hide the frames you selected
		for _, frame in pairs(framesToHide) do
			frame.Visible = false
		end
	
		-- Show the frame you selected
		frameToShow.Visible = true
	
	end)
end
coroutine.wrap(QRHLHGP_fake_script)()
local function OGSXZX_fake_script() -- About.LocalScript1 
	local script = Instance.new('LocalScript', About)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(OGSXZX_fake_script)()
local function SZZY_fake_script() -- ExE.LocalScript1 
	local script = Instance.new('LocalScript', ExE)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(SZZY_fake_script)()
local function XIDNBPF_fake_script() -- ExE.LocalScript3 
	local script = Instance.new('LocalScript', ExE)

	local button = script.Parent
	
	local framesToHide = {
		button.Parent.Parent.AboutFrame,
		button.Parent.Parent.FakeChatFrame,
		button.Parent.Parent.MoreFrame,
		button.Parent.Parent.FEFrame,
	}
	
	local frameToShow = button.Parent.Parent.ExEFrame
	
	button.MouseButton1Click:Connect(function()
	
		-- Hide the frames you selected
		for _, frame in pairs(framesToHide) do
			frame.Visible = false
		end
	
		-- Show the frame you selected
		frameToShow.Visible = true
	
	end)
end
coroutine.wrap(XIDNBPF_fake_script)()
local function DQCBKQ_fake_script() -- Fakechat.LocalScript1 
	local script = Instance.new('LocalScript', Fakechat)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(DQCBKQ_fake_script)()
local function GMANBH_fake_script() -- Fakechat.LocalScript2 
	local script = Instance.new('LocalScript', Fakechat)

	local button = script.Parent
	
	local framesToHide = {
		button.Parent.Parent.AboutFrame,
		button.Parent.Parent.ExEFrame,
		button.Parent.Parent.MoreFrame,
		button.Parent.Parent.FEFrame,
	}
	
	local frameToShow = button.Parent.Parent.FakeChatFrame
	
	button.MouseButton1Click:Connect(function()
	
		-- Hide the frames you selected
		for _, frame in pairs(framesToHide) do
			frame.Visible = false
		end
	
		-- Show the frame you selected
		frameToShow.Visible = true
	
	end)
end
coroutine.wrap(GMANBH_fake_script)()
local function HSFS_fake_script() -- MoreGui.LocalScript1 
	local script = Instance.new('LocalScript', MoreGui)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(HSFS_fake_script)()
local function MHGQA_fake_script() -- MoreGui.LocalScript3 
	local script = Instance.new('LocalScript', MoreGui)

	local button = script.Parent
	
	local framesToHide = {
		button.Parent.Parent.AboutFrame,
		button.Parent.Parent.ExEFrame,
		button.Parent.Parent.FEFrame,
	}
	
	local frameToShow = button.Parent.Parent.MoreFrame
	
	button.MouseButton1Click:Connect(function()
	
		-- Hide the frames you selected
		for _, frame in pairs(framesToHide) do
			frame.Visible = false
		end
	
		-- Show the frame you selected
		frameToShow.Visible = true
	
	end)
end
coroutine.wrap(MHGQA_fake_script)()
local function XVMPZQU_fake_script() -- FE.LocalScript1 
	local script = Instance.new('LocalScript', FE)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(XVMPZQU_fake_script)()
local function TCEBPAD_fake_script() -- FE.LocalScript3 
	local script = Instance.new('LocalScript', FE)

	local button = script.Parent
	
	local framesToHide = {
		button.Parent.Parent.AboutFrame,
		button.Parent.Parent.ExEFrame,
		button.Parent.Parent.FakeChatFrame,
	}
	
	local frameToShow = button.Parent.Parent.FEFrame
	
	button.MouseButton1Click:Connect(function()
	
		-- Hide the frames you selected
		for _, frame in pairs(framesToHide) do
			frame.Visible = false
		end
	
		-- Show the frame you selected
		frameToShow.Visible = true
	
	end)
end
coroutine.wrap(TCEBPAD_fake_script)()
local function IXTSHGM_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/PullMOD"))()
	
	
	end)
end
coroutine.wrap(IXTSHGM_fake_script)()
local function KCQQU_fake_script() -- TextButton.LocalScript2 
	local script = Instance.new('LocalScript', TextButton)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(KCQQU_fake_script)()
local function NZKAHV_fake_script() -- TextButton1.LocalScript 
	local script = Instance.new('LocalScript', TextButton1)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/sound"))()
	
	
	end)
end
coroutine.wrap(NZKAHV_fake_script)()
local function GLMQUX_fake_script() -- TextButton1.LocalScript2 
	local script = Instance.new('LocalScript', TextButton1)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(GLMQUX_fake_script)()
local function SDAIW_fake_script() -- TextButton2.LocalScript 
	local script = Instance.new('LocalScript', TextButton2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/fling%20gui"))()
	
	
	end)
end
coroutine.wrap(SDAIW_fake_script)()
local function PMBETKI_fake_script() -- TextButton2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(PMBETKI_fake_script)()
local function ZEOHL_fake_script() -- TextButton3.LocalScript 
	local script = Instance.new('LocalScript', TextButton3)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/ban%20menu"))()
	
	
	end)
end
coroutine.wrap(ZEOHL_fake_script)()
local function INAPI_fake_script() -- TextButton3.LocalScript2 
	local script = Instance.new('LocalScript', TextButton3)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(INAPI_fake_script)()
local function STHICR_fake_script() -- TextButton4.LocalScript 
	local script = Instance.new('LocalScript', TextButton4)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/testtttttttt"))()
	
	
	end)
end
coroutine.wrap(STHICR_fake_script)()
local function HTYEAB_fake_script() -- TextButton4.LocalScript2 
	local script = Instance.new('LocalScript', TextButton4)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(HTYEAB_fake_script)()
local function TNVDWS_fake_script() -- TextButton5.LocalScript 
	local script = Instance.new('LocalScript', TextButton5)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
	loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/8x-op-gui-v2-real/refs/heads/main/8x%20op%20v2"))()
	
	
	end)
end
coroutine.wrap(TNVDWS_fake_script)()
local function XYQFP_fake_script() -- TextButton5.LocalScript2 
	local script = Instance.new('LocalScript', TextButton5)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(XYQFP_fake_script)()
local function WJSGQN_fake_script() -- TextButton6.LocalScript 
	local script = Instance.new('LocalScript', TextButton6)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://pastebin.com/raw/2AuzvUyN"))()
	
	
	end)
end
coroutine.wrap(WJSGQN_fake_script)()
local function KWZYVT_fake_script() -- TextButton6.LocalScript2 
	local script = Instance.new('LocalScript', TextButton6)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(KWZYVT_fake_script)()
local function YOBPX_fake_script() -- TextButton7.LocalScript 
	local script = Instance.new('LocalScript', TextButton7)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
	loadstring(game:HttpGet("https://pastebin.com/raw/wMdNbeXp"))()
	
	
	end)
end
coroutine.wrap(YOBPX_fake_script)()
local function MFBM_fake_script() -- TextButton7.LocalScript2 
	local script = Instance.new('LocalScript', TextButton7)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(MFBM_fake_script)()
local function OJVD_fake_script() -- TextButton8.LocalScript 
	local script = Instance.new('LocalScript', TextButton8)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/Part%20Fling"))()
	
	
	end)
end
coroutine.wrap(OJVD_fake_script)()
local function VWGGBVM_fake_script() -- TextButton8.LocalScript2 
	local script = Instance.new('LocalScript', TextButton8)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(VWGGBVM_fake_script)()
local function ZMJPID_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/gsm231/Fe-DropKick/refs/heads/main/V0.1"))()
	
	
	end)
end
coroutine.wrap(ZMJPID_fake_script)()
local function VZZGRJQ_fake_script() -- TextButton_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(VZZGRJQ_fake_script)()
local function AURGU_fake_script() -- TextButton1_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton1_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()
	
	end)
end
coroutine.wrap(AURGU_fake_script)()
local function UVNI_fake_script() -- TextButton1_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton1_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(UVNI_fake_script)()
local function PFGWOO_fake_script() -- TextButton2_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton2_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/Desjkfhir"))()
	
	end)
end
coroutine.wrap(PFGWOO_fake_script)()
local function AQEAZC_fake_script() -- TextButton2_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton2_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(AQEAZC_fake_script)()
local function LRGDPRA_fake_script() -- TextButton3_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton3_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/Tornado"))()
	
	end)
end
coroutine.wrap(LRGDPRA_fake_script)()
local function EGLN_fake_script() -- TextButton3_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton3_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(EGLN_fake_script)()
local function JKDXJUO_fake_script() -- TextButton4_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton4_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet(('https://gist.githubusercontent.com/NTheDrone-come/c9383f688764c2e7dc68676d6ab26e71/raw/8e67c55142a1f5e5500c012e078d949e2b996056/invisible')))()
	
	end)
end
coroutine.wrap(JKDXJUO_fake_script)()
local function YOSZVMY_fake_script() -- TextButton4_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton4_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(YOSZVMY_fake_script)()
local function CGAIDDU_fake_script() -- TextButton5_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton5_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Wither"))()
	
	end)
end
coroutine.wrap(CGAIDDU_fake_script)()
local function UQFXVQ_fake_script() -- TextButton5_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton5_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(UQFXVQ_fake_script)()
local function DUMAWJV_fake_script() -- TextButton6_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton6_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-OPfinality-REVIVED-trolling-gui-235713"))()
	
	end)
end
coroutine.wrap(DUMAWJV_fake_script)()
local function HOGYS_fake_script() -- TextButton6_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton6_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(HOGYS_fake_script)()
local function JVROAP_fake_script() -- TextButton7_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton7_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://globalexp.xyz"))()
	
	end)
end
coroutine.wrap(JVROAP_fake_script)()
local function PNKPR_fake_script() -- TextButton7_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton7_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(PNKPR_fake_script)()
local function RQEUK_fake_script() -- TextButton8_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton8_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
	
		loadstring(game:HttpGet("https://raw.githubusercontent.com/8x8x8x8x8x8x8x8/Fee-Bypass-8x8x8888888888/refs/heads/main/Doors%20gui"))()
	
	
	end)
end
coroutine.wrap(RQEUK_fake_script)()
local function MMSS_fake_script() -- TextButton8_2.LocalScript2 
	local script = Instance.new('LocalScript', TextButton8_2)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(MMSS_fake_script)()
local function NUXHR_fake_script() -- Toggle.LocalScript2 
	local script = Instance.new('LocalScript', Toggle)

	local TextLabel = script.Parent
	
	while true do
		for hue = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
			task.wait(0.03)
		end
	end
	
end
coroutine.wrap(NUXHR_fake_script)()
local function HEYHF_fake_script() -- Toggle.LocalScript1 
	local script = Instance.new('LocalScript', Toggle)

	local button = script.Parent
	local gui = button:FindFirstAncestorOfClass("ScreenGui")
	
	button.MouseButton1Click:Connect(function()
		for _, object in ipairs(gui:GetChildren()) do
			if object:IsA("Frame") then
				object.Visible = not object.Visible
			end
		end
	end)
end
coroutine.wrap(HEYHF_fake_script)()
