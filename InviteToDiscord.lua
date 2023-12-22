local SlayerzUI_Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/Notification.script"))()
local NameHub = "Alchemy Hub"
local Description = ""
local Logo = "rbxassetid://14981376704"
local Color = Color3.fromRGB(0, 255, 145)
SlayerzUI_Notify:Notify(NameHub, Description, Logo, Color, 5)
print("Success!")
local start_anttis = false
local notertwitte = false
if game.PlaceId == 2753915549 then
    start_anttis = true
elseif game.PlaceId == 4442272183 then
    start_anttis = true
elseif game.PlaceId == 7449423635 then
    start_anttis = true
    notertwitte = true
else
    print("CODE : NOT FOUND - 327")
end
if start_anttis then
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
end
if notertwitte then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/AlchemyHub/main/Pasted"))()
end
