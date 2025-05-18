-- วิธีหาค่าจำนวนตัวเลข นาที เเปลงเป็น วินาที >> https://www.addnine.com/web/metric/time/minute-second
local Players = game:GetService("Players")
local LPlayer = Players.LocalPlayer

task.spawn(function()
    local function LoopTask()
        task.delay(900, function() -- ปกติเป็น 15 นาที
            local Char = LPlayer.Character or LPlayer.CharacterAdded:Wait()
            local Humanoid = Char:FindFirstChild("Humanoid")
            if Humanoid then
                Humanoid.Health = 0
            end
            LoopTask()
        end)
    end
    LoopTask()
end)
