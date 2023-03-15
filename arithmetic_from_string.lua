
function calc_from_string (str)
	local start = tonumber(string.match(str,"%d+"))
	local operations = {["+"]=0, ["-"]=0}

	for i in string.gmatch(str,"%p%d+") do
		if string.sub(i,1,1) == "-" then
			operations["-"] -= tonumber(string.sub(i,2,string.len(i)))
		elseif string.sub(i,1,1) == "+" then
			operations["+"] += tonumber(string.sub(i,2,string.len(i)))
		end
	end
	
	return start+operations["+"]+operations["-"]
end
