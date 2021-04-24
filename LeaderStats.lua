game.Players.PlayerAdded:Connect(functiion(player)
	
	local learderstats = Instance.new("Folder")
	leaderstats.Name = "learderstats"
	leaderstats.Parent	= player
	
	local coins = Instance.new("IntValue")
	coins.Name = "Coins"
	coins.Value = 0
	coins.Parent = leaderstats
	
end)
