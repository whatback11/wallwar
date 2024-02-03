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
			SendNotification("플레이어 참여",""..player.Name.."  플레이어가 들어왔습니다.",2.5 )
		end) then
		print ("Error")
	end
end)

game.Players.ChildRemoved:Connect(function(player)
	if not pcall (function()
			SendNotification("플레이어 나감",""..player.Name.."  플레이어가 나갔습니다.",2.5 )
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
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
local openbc = Instance.new("UICorner")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local home = Instance.new("TextButton")
local guis = Instance.new("TextButton")
local teams = Instance.new("TextButton")
local funcs = Instance.new("TextButton")
local homemain = Instance.new("Frame")
local title_2 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local teamsmain = Instance.new("Frame")
local cop = Instance.new("TextButton")
local inmate = Instance.new("TextButton")
local neutral = Instance.new("TextButton")
local crim = Instance.new("TextButton")
local guismain = Instance.new("Frame")
local prisonbreakerv15 = Instance.new("TextButton")
local prisondestroyer = Instance.new("TextButton")
local kickgui = Instance.new("TextButton")
local scriptsmain = Instance.new("Frame")
local godmode = Instance.new("TextButton")
local destroy = Instance.new("TextButton")
local hitbox = Instance.new("TextButton")
local antikickmainon = Instance.new("Frame")
local antikickon = Instance.new("TextButton")
local antikickmainoff = Instance.new("Frame")
local antikickoff = Instance.new("TextButton")
local modguns = Instance.new("TextButton")
PrisonBreakerV16.Name = "PrisonBreakerV1.6"
PrisonBreakerV16.Parent = game.CoreGui
-- All Skids Welcome 

openmain.Name = "openmain"
openmain.Parent = PrisonBreakerV16
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(0.0104873544, 0, 0.549140036, 0)
openmain.Size = UDim2.new(0, 100, 0, 26)

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.new(1, 0, 0.498039)
open.Position = UDim2.new(50, 0, 100, -10)
open.Size = UDim2.new(0, 100, 0, 26)
openbc.Parent = open
open.Font = Enum.Font.GothamBlack
open.Text = "열기"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 18
open.TextWrapped = true
open.MouseButton1Down:connect(function()
	local main = game:GetService("CoreGui")["PrisonBreakerV1.6"].main
	wait(0.01)
	if toggle == false then
		main:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), 'Out', 'Quad', 0.8)
		toggle = true
	else
		main:TweenPosition(UDim2.new(0.5, 0, 0.8, 0), 'Out', 'Quad', 0.8)
		toggle = false
	end
	wait(0.9)
	if main.Position == (UDim2.new(0.5, 0, 0.5, 0)) then 
		open.Text = "닫기"
	else
		open.Text = "열기"
	end
end)

main.Name = "main"
main.Parent = PrisonBreakerV16
main.BackgroundColor3 = Color3.new(0, 0, 127)
main.BorderColor3 = Color3.new(0, 0, 127)
main.BorderSizePixel = 5
main.Position = UDim2.new(0.5, 0, 0.8, 0)
main.Size = UDim2.new(0, 465, 0, 341)
main.Active = true
main.Draggable = false
