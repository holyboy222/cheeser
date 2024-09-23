local cheeser = 3450781223
local spell = 'achoo!'

function cheese()
	for _, noob in pairs(game.Players:GetPlayers()) do
		local c = Instance.new('Part', workspace)
		c.BrickColor = BrickColor.new("Bright yellow")
		c.Size = Vector3.new(3,1.5,4)
		c.Position = Vector3.new(0,15,0)
		c.CanCollide = false
		local m = Instance.new('SpecialMesh', c)
		m.MeshType = Enum.MeshType.FileMesh
		m.Scale = Vector3.new(3,3,3)
		m.MeshId = 'rbxassetid://1090700'
		local b = Instance.new('BodyPosition', c)
		b.P = 50
		b.D = 10
		spawn(function()
			while true do
				if noob.Character and noob.Character:FindFirstChild('HumanoidRootPart') then
					c.Rotation = noob.Character.HumanoidRootPart.Rotation
					b.Position = noob.Character.HumanoidRootPart.Position - noob.Character.HumanoidRootPart.CFrame.LookVector * 5
				end
				wait(0.003)
			end
		end)
	end
end

game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		if plr.UserId == cheeser then
			if msg:lower() == spell then
				-- chaos xD
				cheese()
			end
		end
	end)
end)
