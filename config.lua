Config = {}

Config.DipcikEngel = true -- Dipçik engeli açar/kapatır. (açmak için true, kapatmak için false yapın.)
Config.CrossKapa = true -- Oyunun crosshairini açar/kapatır. (açmak için false , kapatmak için true yapın.)
 
--- BUNNY ---
Config.BunnyEngel = true -- Bunny engeli açar/kapatır.(açmak için true, kapatmak için false yapın.)
Config.BunnyLimit = 3 -- Kaç kere zıpladığında yere düşsün onu ayarlamaya yarar. (Önerilen 3)


--- NPC AYARLARI ---

Config.VehicleDensity = 0.0 -- Trafik yoğunluğunu ayarlar.
Config.PedDensity = 0.0 -- NPC yoğunluğunu ayarlar.
Config.RandomVehicleDensity = 0.0 -- Rastgele araçların ( Park yerinden hareket eden arabalar vb.) yoğunluğunu ayarlar.
Config.RandomParkedVehicleDensity = 0.0 -- Rastgele park edilmiş araçların yoğunluğunu ayarlar.
Config.ScenarioPedDensityMin = 0.0 -- Rastgele npc/ai pedlerini veya senaryo pedlerinin minimum yoğunluğunu ayarlar.
Config.ScenarioPedDensityMax = 0.0 -- Rastgele npc/ai pedlerini veya senaryo pedlerinin maximum yoğunluğunu ayarlar.
Config.GarbageTruck = false -- Çöp arabalarını aktifleştir/kapat. (açmak için true, kapatmak için false yapın.)
Config.RandomBoats = false -- Rastgele tekne spawnlanmasını aktifleştir/kapat. (açmak için true, kapatmak için false yapın.)
Config.RandomCops = false -- Etrafta dolaşan/arabayla dolaşan rastgele polisleri aktifleştir/kapat. (açmak için true, kapatmak için false yapın.)
Config.RandomCopsNotScenario = false -- Rastgele polislerin (bir senaryoda değil) spawnlanmasını durdurun. (açmak için true, kapatmak için false yapın.)
Config.RandomCopsOnScenario = false  -- Rastgele polislerin (bir senaryoda) spawnlanmasını durdurun. (açmak için true, kapatmak için false yapın.)


--- BLİPLER ---
Config.EnableBlips = true -- Blipleri kapatır/açar. (açmak için true, kapatmak için false yapın.)
Config.Blips = { -- Sprite ve renkler için https://docs.fivem.net/docs/game-references/blips/#blip-colors
    [1] = {coord = vector3(0, 0, 0), text = "Atomik Dev.", color = 3, sprite = 76, scale = 0.6, radius = false, alpha = 0, radiuscolor = 0},
}

--- NPC EKLEME ---

Config.EnableNPC = true -- npc koymadıysanız hata çıkmaması için false yapınız
Config.NPC = { -- Ped Hash için https://wiki.rage.mp/index.php?title=Peds
    [1] = {coord = vector3(0, 0, 0), heading = 180, pedhash = 0xF0AC2626 },
}


--- DİSCORD OYNUYOR ---

Config.appid ='appid' -- https://discord.com/developers/applications sitesinden botunuzu seçin. General information kategorisinde APPLICATION ID yazanı kopyalayıp buraya yapıştırın. 
Config.logo = 'text' -- https://discord.com/developers/applications sitesinden botunuzu seçin. Rich Presence > Art Assets'e girin Add image deyin resime verdiğiniz ismi buraya yazın.
Config.logotext = 'Atomik Development 💖' -- Resmin üstüne mause getirince çıkıcak yazıyı ayarlayın.
Config.minilogo = 'text' -- -- https://discord.com/developers/applications sitesinden botunuzu seçin. Rich Presence > Art Assets'e girin Add image deyin resime verdiğiniz ismi buraya yazın.
Config.minilogotext = 'Atomik Development 💖' -- Resmin üstüne mause getirince çıkıcak yazıyı ayarlayın.
Config.Buttons = {
    [1] = {text = "Atomik Development", link = "https://discord.gg/GSeQ747HsC"},
    [2] = {text = "Atomik Github", link = "https://github.com/atomikk0"}
}


-- İD GÖSTERME --

Config.key = 19 -- Tuş https://docs.fivem.net/docs/game-references/controls/
Config.which = "steamv2" -- Kafanın üstünde ne yazıcak. "steam", "steamv2", "license", "licensev2", "name" 
Config.commandName = "id" -- Komut ismi
Config.drawDistance = 4 -- Uzaklık


--- YEMEK İÇECEK ---

Config.YemeSure = 5000
Config.IcmeSure = 5000

Config.ConsumablesEat = { -- Yemek yediğinizde açlığı ne kadar doldurucak onu ayarlıyorsunuz.
    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
}

Config.ConsumablesDrink = { -- Su içtiğinizde açlığı ne kadar doldurucak onu ayarlıyorsunuz.
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
}

Config.ConsumablesLocales = {
    ['yemekprogress'] = "Bişeyler yiyorsun...",
    ['suprogress'] = "Bişeyler içiyorsun...",
}
