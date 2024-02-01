local COREGUI = game:GetService("CoreGui")

function inw(a,b)
	local forinw = Instance.new(a)
	forinw.Parent = b
	return forinw
end


local plrgui = inw("ScreenGui", game.CoreGui)
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
