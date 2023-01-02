local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()



local Window = Rayfield:CreateWindow({                                                 
    Name = "Game Fucker By Krik#9388",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "sirius", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Krik's Hub",
       Subtitle = "Enjoy :)",
       Note = "Join the discord (https://discord.gg/EcYhdq99)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "Krik"
    }
 })

 local Tab = Window:CreateTab("Main")
 local Section = Tab:CreateSection("AutoMatic Shit")
 local Label = Tab:CreateLabel("Auto Farm Stacks With Upgrades :)")
 local Toggle = Tab:CreateToggle({
    Name = "AutoFarm",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    AutoFarm = Value
    while AutoFarm == true do
        
        local args = {
            [1] = {
                [1] = "Release"
            }
        }
        
        game:GetService("ReplicatedStorage").Events.Game:FireServer(unpack(args))
        wait()    


    end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto Upgrade ALL",
    CurrentValue = false,
    Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    AutoUpgrade = Value
    while AutoUpgrade == true do
        

        local args = {
            [1] = {
                [1] = "Buy",
                [2] = "Knowledge"
            }
        }
        
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        
        local args = {
            [1] = {
                [1] = "Buy",
                [2] = "Quality"
            }
        }
        
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))


        local args = {
            [1] = {
                [1] = "Buy",
                [2] = "Wifi"
            }
        }
        
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        wait()
    end
    end,
 })
 local Section = Tab:CreateSection("Obby Shit")
 local Label = Tab:CreateLabel("The Obby Has a 5 Minute Cooldown.")
 local Button = Tab:CreateButton({
    Name = "Auto Complete",
    Callback = function()
    obby()
    end,
 })

 local Section = Tab:CreateSection("Tycoon Shit")
 local Button = Tab:CreateButton({
    Name = "Claim Tycoon",
    Callback = function()
    Claim()
    end,
 })






 local Tab = Window:CreateTab("Manuel Shit")

 local Section = Tab:CreateSection("Upgrades")
 local Toggle = Tab:CreateToggle({
    Name = "Knowledge ONLY",
    CurrentValue = false,
    Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
   AutoUpgrade1 = Value
   while AutoUpgrade1 == true do
    
    local args = {
        [1] = {
            [1] = "Buy",
            [2] = "Knowledge"
        }
    }
    
    game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
    wait()
    
   end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Wifi ONLY",
    CurrentValue = false,
    Flag = "Toggle4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    AutoUpgrade2 = Value
    while AutoUpgrade2 == true do
        
        local args = {
            [1] = {
                [1] = "Buy",
                [2] = "Wifi"
            }
        }
        
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        wait()

    end
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Quality ONLY",
    CurrentValue = false,
    Flag = "Toggle5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    AutoUpgrade3 = Value
    while AutoUpgrade3 == true do
        
        local args = {
            [1] = {
                [1] = "Buy",
                [2] = "Quality"
            }
        }
        
        game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        wait()

    end
    end,
 })




 getgenv().AutoFarm = true
 getgenv().AutoUpgrade = true
 getgenv().AutoUpgrade2 = true
 getgenv().AutoUpgrade3 = true
 getgenv().AutoUpgrade4 = true
 
 function Claim()
    
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 3, -219)
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91, 3, -208)
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(91, 3, -15)
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 3, -10)
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92, 3, 195)
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36, 3, 185)
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 3, -12)
end

function obby()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68, 4, -315)
wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(60, 4, -445)
end
