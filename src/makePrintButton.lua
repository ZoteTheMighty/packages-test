local Players = game:GetService("Players")
local Modules = script.Parent.Parent

local ButtonMaker = require(Modules.ButtonMaker)

local function makePrintButton(outputText)
	local parent = Players.LocalPlayer:WaitForChild("PlayerGui")
	local printButton = ButtonMaker.makeButton()
	printButton.Activated:Connect(function()
		print(outputText)
	end)

	local ScreenGui = Instance.new("ScreenGui")
	printButton.Parent = ScreenGui
	ScreenGui.Parent = parent

	return printButton
end

return makePrintButton