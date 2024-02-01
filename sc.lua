local function SNO(title,text,duration,...)
  game.StarterGui:SetCore("SendNotification", {
    Title = title;
    Text = text;
    Icon = "";
    Duration = duration;
  })
end

game.Players.ChildRemoved:Connect(function(player)
  if not pcall (function()
  SendNotification("Player Left",""..player.Name.."  서버에서 나갔습니다.",2.5 )
  end) then
    print ("Error")
  end
end)
local openmain = Instance.new("Frame")
openmain.Name = "openmain"
openmain.Parent = PrisonBreakerV16
openmain.BackgroundColor3 = Color3.new(1, 1, 1)
openmain.Position = UDim2.new(0.0104873544, 0, 0.549140036, 0)
openmain.Size = UDim2.new(0, 100, 0, 26)

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
