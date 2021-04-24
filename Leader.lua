wait(0.2)
while true do
	local hp = game.Players.LocalPlayer.Character.Humanoid.Health/100
	script.Parent:TweenSize((UDim2.new(hp,0,1,0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.15)
	wait(0.2)
end
