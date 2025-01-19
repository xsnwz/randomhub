local old;

local cloneref = cloneref or function(...) 
	return ...
end

local Players,LocalPlayer,StarterGui do
	Players = cloneref(game:GetService("Players"))
	LocalPlayer = cloneref(game:GetService("Players").LocalPlayer)
	StarterGui = cloneref(game:GetService("StarterGui"))
end

if not hookmetamethod or not newcclosure or not getnamecallmethod then
	LocalPlayer:Kick("Shitty executor")
	return
end

old = hookmetamethod(game, "__namecall", newcclosure(function(...)
	local args = {...}
	if getnamecallmethod():lower():find("kick") then
	return
	end
	return old(...)
end))
