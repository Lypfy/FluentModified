local RunService = game:GetService("RunService")
local Animation = {}
local connections = {}

local function ClearAllAnimations()
	for _, c in ipairs(connections) do
		pcall(function() c:Disconnect() end)
	end
	table.clear(connections)
end

local function ResetToStatic(theme, root)
	if not root then return end
	theme = theme or {}
	local fallbackGradient = theme.AcrylicGradient or ColorSequence.new(theme.AcrylicMain or Color3.fromRGB(30, 30, 30))
	local fallbackStrokeColor = theme.StrokeDark or theme.AcrylicBorder or theme.ElementBorder or Color3.fromRGB(80, 80, 80)

	for _, obj in ipairs(root:GetDescendants()) do
		if obj:IsA("UIGradient") then
			pcall(function()
				obj.Rotation = 90
				obj.Color = fallbackGradient
				obj:SetAttribute("old_t", nil)
			end)
		elseif obj:IsA("UIStroke") then
			pcall(function()
				obj.Thickness = 1
				obj.Color = fallbackStrokeColor
				obj:SetAttribute("old_t", nil)
			end)
		end
	end
end

function Animation.Apply(theme, root)
	ClearAllAnimations()

	local isShineActive = (getgenv().ShineEnabled ~= false) and (theme and (theme.ShineEnabled ~= false) and theme.Shine)
	if not isShineActive or not root then
		ResetToStatic(theme, root)
		return
	end

	local ShineConfig = theme.Shine
	local Speed = ShineConfig.Speed or 0.5
	local RotationSpeed = ShineConfig.RotationSpeed or 25
	local ColorSequence = ShineConfig.ColorSequence
	
	for _, obj in ipairs(root:GetDescendants()) do
		if obj:IsA("UIGradient") then
			local conn
			conn = RunService.RenderStepped:Connect(function(dt)
				local t = obj:GetAttribute("old_t") or 0
				t += dt * Speed
				obj:SetAttribute("old_t", t)
				obj.Rotation = (t * RotationSpeed) % 360
				if ColorSequence then
					obj.Color = ColorSequence
				end
			end)
			table.insert(connections, conn)
		end

		if obj:IsA("UIStroke") and theme.StrokeShine then
			local from = theme.StrokeDark or theme.AcrylicBorder
			local shine = theme.Accent
			local conn
			conn = RunService.RenderStepped:Connect(function(dt)
				local t = obj:GetAttribute("old_t") or 0
				t += dt * Speed
				obj.Thickness = 2
				obj:SetAttribute("old_t", t)
				if from and shine then
					obj.Color = from:Lerp(shine, (math.sin(t) + 1) / 2)
				end
			end)
			table.insert(connections, conn)
		end
	end
end

return Animation
