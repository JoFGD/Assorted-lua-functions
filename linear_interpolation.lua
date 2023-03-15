local y = 100
local originalColor = Color3.fromRGB(0, 255, 0)
local redColor = Color3.fromRGB(255, 0, 0)
for i=y,0,-1 do
	wait(0.1)
	
	local x = math.sqrt((i-y)^2)/y
	
	game.Workspace.ChangePart1.Color = originalColor:Lerp(redColor, x)
end
