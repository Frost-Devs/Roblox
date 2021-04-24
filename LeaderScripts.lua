local Players = game.Players

local Template = Instance.new 'BoolValue'
Template.Name = 'leaderstats'

Instance.new('IntValue', Template).Name = "Kills"
Instance.new('IntValue', Template).Name = "Deaths"


Players.PlayerAdded:connect(function(Player)
	wait(1)
	local Stats = Template:Clone()
	Stats.Parent = Player
	local Deaths = Stats.Deaths
	Player.CharacterAdded:connect(function(Character)
		Deaths.Value = Deaths.Value + 1
		local Humanoid = Character:FindFirstChild "Humanoid"
		if Humanoid then
			Humanoid.Died:connect(function()
				for i, Child in pairs(Humanoid:GetChildren()) do
					if Child:IsA('ObjectValue') and Child.Value and Child.Value:IsA('Player') then
						local Killer = Child.Value
						if Killer:FindFirstChild 'leaderstats' and Killer.leaderstats:FindFirstChild "Kills" then
							local Kills = Killer.leaderstats.Kills
							Kills.Value = Kills.Value + 1
						end
						return
					end
				end
			end)
		end
	end)
end)
