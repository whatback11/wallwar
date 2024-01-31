local function SNO(title,text,duration,...)
  game.StarterGui:SetCore("SendNotification", {
    Title = title;
    Text = text;
    Icon = "";
    Duration = duration;
  })
end
while true do
	wait(0.1)
	SNO("개발중...","개발중입니다. 다음날이나 잠시후 시도해 보세요!!",2.5 )
end
