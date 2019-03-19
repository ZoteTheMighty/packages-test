local Modules = script.Parent.Parent

local FlipTable = require(Modules.FlipTable)
local PrintButton = require(Modules.PrintButton)

local function makeTableFlipButton()
	local text = FlipTable.flipTable()

	return PrintButton.makePrintButton(text)
end

return makeTableFlipButton