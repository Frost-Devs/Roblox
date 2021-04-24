local button = script.Parent
local toggled = false

local function onButtonActivated()
	if toggled == false then
		button.Image = "rbxgameasset://Images/ImageButtonActivated"
		toggled = true
	else
		button.Image = "rbxgameasset://Images/ImageButtonNormal"
		toggled = false
	end
end

button.Activated:Connect(onButtonActivated)
