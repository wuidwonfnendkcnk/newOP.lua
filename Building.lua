_G.create = {
Building=function(X,Y,Z,Pos)
  coroutine.wrap(function()
  local Build=Instance.new("Model",Workspace)
  for x=-(X/2),X/2,5 do
    wait(0)
     for y=1,Y,5 do
        for z=-(Z/2),Z/2,5 do
          local part=Instance.new("Part",Build)
          part.Name='Wall'
          part.Anchored=true
          part.Size=Vector3.new(5,5,5)
          part.CFrame=CFrame.new(Pos)*CFrame.new(x,y,z)
          wait(0)
          end
       end
    end
  end)()
  end
}
