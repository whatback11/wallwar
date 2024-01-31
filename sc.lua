local COREGUI = game:GetService("CoreGui")

function inw(a,b)
	local forinw = Instance.new(a)
	forinw.Parent = b
	return forinw
end


local plrgui = inw("ScreenGui", COREGUI)
local fm = inw("Frame", plrgui)
local good = inw("ScrollingFrame", fm)
local deltar = inw("TextButton", good)
inw ("UICorner", fm)
-- make ui hi~hi~

function mbt(t, num)
	local so = inw("TextButton", good)
	so.Size = UDim2.new(0, 760, 0, 30)
	so.Text = t
	so.AnchorPoint = Vector2.new(0.5, 0.5)
	so.Position =  UDim2.new(0.5, -5, 0, 20 * num)
	return so
end
-- my funtion


function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

PARENT = nil
if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

Main.Position = UDim2.new(0.5, 0, 0.2, 0)
Main.Size = UDim2.new(0, 800, 0, 150)
Main.AnchorPoint = Vector2.new(0.5, 0.5)
good.Size = UDim2.new(0, 800, 0, 150)
good.BackgroundTransparency = 1
good.BorderSizePixel = 0


function deltar()
	local i = 0;
	local b = 0;
	repeat
		
		i = i + 1
		
		repeat
			b = b - 1
			local args = {
			[1] = Vector3.new(i, 11.626521110534668, b),
			[2] = workspace:WaitForChild("Terrain")
			}
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("\234\179\161\234\180\173\236\157\180").RemoteEvent:FireServer(unpack(args))
			
		until b == -500
		

	until i == 500
end


local deltar = mbt("deltar", 1)
deltar.MouseButton1Click:Connect(function()
	deltar()
end)
