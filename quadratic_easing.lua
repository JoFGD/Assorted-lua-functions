local part = workspace.EasingPart

local X = part.Position.x

function Parabola(i)
	return (i)^2 + (X-25)
end

while wait(0.01) do
	for i=-5.2,5.2,0.2 do
		wait(0.01)
		part.Position = Vector3.new(Parabola(i), part.Position.Y, part.Position.Z)
	end
end
