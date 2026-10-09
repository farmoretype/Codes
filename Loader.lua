local replicated_storage = game:GetService("ReplicatedStorage")
local main_event = replicated_storage:WaitForChild("MainEvent")

task.spawn(function()
    local codes = {
        "MACRO!",
        "ETERNAL"
    }

    for _, code in ipairs(codes) do
        main_event:FireServer("EnterPromoCode", code)
        wait(6)
    end
end)
