local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MainEvent = ReplicatedStorage:WaitForChild("MainEvent")

local function sendCode(code)
    MainEvent:FireServer("EnterPromoCode", code)
end

task.spawn(function()
    local codes = {
        "BALLOON",
        "BOSS"
    }

    for _, code in ipairs(codes) do
        sendCode(code)
        task.wait(6)
    end
end)
