local function makeButton()
	local printButton = Instance.new("TextButton")
	printButton.Text = "Click me!"
	printButton.Size = UDim2.new(0, 200, 0, 200)
	printButton.Position = UDim2.new(0.5, 0, 0.5, 0)
	printButton.AnchorPoint = Vector2.new(0.5, 0.5)

	return printButton
end

return makeButton