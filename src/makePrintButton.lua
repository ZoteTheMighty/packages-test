local Players = game:GetService("Players")
local Modules = script.Parent.Parent

local Roact = require(Modules.Roact)

local function PrintButton(props)
	local outputText = props.outputText
	return Roact.createElement("TextButton", {
		Text = "Click me!",
		Size = UDim2.new(0, 200, 0, 200),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		[Roact.Event.Activated] = function()
			print(outputText)
		end,
	})
end

local function makePrintButton(outputText)
	local parent = Players.LocalPlayer

	local Gui = Roact.createElement("ScreenGui", {
		PrintButton = Roact.createElement(PrintButton, {
			outputText = outputText,
		})
	})

	return Roact.mount(Gui, parent, "PrintButton")
end

return makePrintButton