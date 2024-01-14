local SlayerzUI_Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/Notification.script"))()
local NameHub = "Alchemy Hub"
local Description = "Hello, TYSM for using ours script!"
local Logo = "rbxassetid://14981376704"
local Color = Color3.fromRGB(0, 255, 145)
SlayerzUI_Notify:Notify(NameHub, Description, Logo, Color, 5)
print("Success!")
local start_anttis = false
if game.PlaceId == 2753915549 then
    start_anttis = true
elseif game.PlaceId == 4442272183 then
    start_anttis = true
elseif game.PlaceId == 7449423635 then
    start_anttis = true
else
    print("CODE : NOT FOUND - 327")
end
if start_anttis == true then
    assert(getrawmetatable)
        grm = getrawmetatable(game)
        setreadonly(grm, false)
        old = grm.__namecall
        grm.__namecall = newcclosure(function(self, ...)
            local args = {...}
            if tostring(args[1]) == "TeleportDetect" then
                return
            elseif tostring(args[1]) == "CHECKER_1" then
                return
            elseif tostring(args[1]) == "CHECKER" then
                return
            elseif tostring(args[1]) == "GUI_CHECK" then
                return
            elseif tostring(args[1]) == "OneMoreTime" then
                return
            elseif tostring(args[1]) == "checkingSPEED" then
                return
            elseif tostring(args[1]) == "BANREMOTE" then
                return
            elseif tostring(args[1]) == "PERMAIDBAN" then
                return
            elseif tostring(args[1]) == "KICKREMOTE" then
                return
            elseif tostring(args[1]) == "BR_KICKPC" then
                return
            elseif tostring(args[1]) == "BR_KICKMOBILE" then
                return
            end
            return old(self, ...)
    end)
    
    getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync
    getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play
    _G.setfflag = true
    spawn(function()
        while wait() do
            if _G.setfflag then
                setfflag("AbuseReportScreenshot", "False")
                setfflag("AbuseReportScreenshotPercentage", "0")
            end
        end
    end)
    
    _G.SafeFarm = true
    spawn(function()
        while wait() do
            if _G.SafeFarm then
                for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("LocalScript") then
                        if
                            v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or
                            v.Name == "CamBob" or
                            v.Name == "JumpCD" or
                            v.Name == "Looking" or
                            v.Name == "Run"
                        then
                            v:Destroy()
                        end
                    end
                end
                for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
                    if v:IsA("LocalScript") then
                        if
                            v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or
                            v.Name == "CustomForceField" or
                            v.Name == "MenuBloodSp" or
                            v.Name == "PlayerList"
                        then
                            v:Destroy()
                        end
                    end
                end
            else
                game.Players.LocalPlayer:Kick("Alchemy Security : Detect ( Anti Cheat ), Please rejoin !")
            end
        end
    end)
end
