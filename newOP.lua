wait(1)
M=game.Players.LocalPlayer:GetMouse()
    Z=20
    
    M.KeyDown:connect(function(K)
        if K=='u' then Z=Z-1 elseif K=='n' then Z=Z+1 end
        end)
        
    M.Button1Down:connect(function()
        down=true
        while down and wait() do
            local T=M.Target
            if not T then else
            --local cf=M.Hit
            local CF=CFrame.new(script.Parent.Torso.Position,T.Position)*CFrame.new(0,0,-Z)
            T.Anchored=true
            T.CFrame=CF
            local ray = Ray.new(tool.Handle.CFrame.p, (CF.p - script.Parent.Torso.CFrame.p).unit*300)

        local distance = (CF.p - script.Parent.Torso.CFrame.p).magnitude
        local rayPart = Instance.new("Part", workspace)
        rayPart.Name= "RayPart"
        rayPart.BrickColor = BrickColor.new("Bright red")
        rayPart.Transparency = 0.5
        rayPart.Anchored = true
        rayPart.CanCollide = false
        rayPart.Size = Vector3.new(0.2, 0.2, distance)
        rayPart.CFrame = CFrame.new(CF.p, script.Parent.Torso.CFrame.p) * CFrame.new(0, 0, -distance/2)
        game.Debris:AddItem(rayPart,0.1)
        end
            end
    end)
    
    M.Button1Up:connect(function()
        down=false
    end)
