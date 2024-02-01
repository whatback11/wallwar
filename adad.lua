-- WILL NOT WORK ON FREE EXPLOITS!
-- [Made By Jake11price]
-- Enjoy
local function SendNotification(title,text,duration,...)
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = text;
		Icon = "";
		Duration = duration;
	})
end

game.Players.ChildAdded:Connect(function(player)
	if not pcall (function()
			SendNotification("플레이어 들어옴",""..player.Name.."  플레이가 게임에 들어왔습니다.",2.5 )
		end) then
		print ("Error")
	end
end)

game.Players.ChildRemoved:Connect(function(player)
	if not pcall (function()
			SendNotification("플레이어 나감",""..player.Name.."  플레이어가 게임에서 나갔습니다.",2.5 )
		end) then
		print ("Error")
	end
end)
for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do 
	if v.Name == "PurchasePromptApp" then 
		v:Remove()
	end
end
for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do 
	if v.Name == "PrisonBreakerV1.6" then 
		v:Remove()
	end
end

local toggle = false
local PrisonBreakerV16 = Instance.new("ScreenGui")
local open = Instance.new("TextButton")
PrisonBreakerV16.Name = "PrisonBreakerV1.6"
PrisonBreakerV16.Parent = game.CoreGui
-- All Skids Welcome 

hub.Name = "openmain"
hub.Parent = PrisonBreakerV16
hub.BackgroundColor3 = Color3.new(1, 1, 1)
hub.Position = UDim2.new(0.0104873544, 0, 0.549140036, 0)
hub.Size = UDim2.new(0, 100, 0, 26)

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 0, 0.498039)
open.Position = UDim2.new(0, 0, -0.0299201012, 0)
open.Size = UDim2.new(0, 100, 0, 26)
open.Font = Enum.Font.GothamBlack
open.Text = "열기"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
	hub.Visible = not hub.visible
	if hub.Visible == true then
		open.Text = "닫기"
	else
		open.Text = "열기"
	end
end)
