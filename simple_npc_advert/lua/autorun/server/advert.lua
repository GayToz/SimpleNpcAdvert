--[[------------------------------------------
			Addon By GayToz
------------------------------------------]]
util.AddNetworkString("GayToz_Advert:Advert")

net.Receive("GayToz_Advert:Advert", function(length, ply)
    local npc = net.ReadEntity()
    local AdvertText = net.ReadString()
    local AdvertColor = net.ReadColor()
    local money = ply:getDarkRPVar("money")

    if ply.delay == nil then
        ply.delay = 0
    end

    if CurTime() < ply.delay then
        DarkRP.notify(ply, 0, 7, "Veuillez Attendre 30 Secondes Avant De Publier Une Nouvelle Publicité !")

        return
    end

    if not npc:GetClass() == "npc_advert" then return end

    if ply:GetPos():DistToSqr(npc:GetPos()) > 200 then
         print(Simple_Npc_Advert.PriceAdvertAno)
        if money >= Simple_Npc_Advert.PriceAdvert then
            DarkRP.notify(ply, 0, 7, Simple_Npc_Advert.TextPayeYes .. Simple_Npc_Advert.PriceAdvert)
            ply:addMoney(Simple_Npc_Advert.PriceAdvert * -1)
            ply.delay = CurTime() + Simple_Npc_Advert.SecondAntiSpamm
        else
            DarkRP.notify(ply, 1, 7, Simple_Npc_Advert.TextPayeNo)

            return
        end

        for i = 1, #player.GetAll() do
            DarkRP.talkToPerson(player.GetAll()[i], Color(173, 198, 13), "[Publicité] " .. ply:Nick(), AdvertColor, AdvertText, ply)
        end
    end
end)

util.AddNetworkString("GayToz_Advert:Ano")

net.Receive("GayToz_Advert:Ano", function(length, ply)
    local npc = net.ReadEntity()
    local AnoText = net.ReadString()
    local AnoColor = net.ReadColor()
    local money = ply:getDarkRPVar("money")

    if ply.delay == nil then
        ply.delay = 0
    end

    if CurTime() < ply.delay then
        DarkRP.notify(ply, 0, 7, "Veuillez Attendre 30 Secondes Avant De Publier Une Nouvelle Publicité !")

        return
    end

    if not npc:GetClass() == "npc_advert" then return end

    if ply:GetPos():DistToSqr(npc:GetPos()) > 200 then
    	 print(Simple_Npc_Advert.PriceAdvertAno)
        if money >= Simple_Npc_Advert.PriceAdvertAno then
            DarkRP.notify(ply, 0, 7, Simple_Npc_Advert.TextPayeYes .. Simple_Npc_Advert.PriceAdvertAno)
            ply:addMoney(Simple_Npc_Advert.PriceAdvertAno * -1)
            ply.delay = CurTime() + Simple_Npc_Advert.SecondAntiSpamm
        else
            DarkRP.notify(ply, 1, 7, Simple_Npc_Advert.TextPayeNo)

            return
        end

        for i = 1, #player.GetAll() do
            DarkRP.talkToPerson(player.GetAll()[i], Color(0, 0, 0), "[Anonyme] ", AnoColor, AnoText, nil)
        end
    end
end)

util.AddNetworkString("GayToz_Advert:Repetitive")

net.Receive("GayToz_Advert:Repetitive", function(length, ply)
    local npc = net.ReadEntity()
    local AdvertText = net.ReadString()
    local AvertColorRepet = net.ReadColor()
    local money = ply:getDarkRPVar("money") 

    if ply.delay == nil then
        ply.delay = 0
    end

    if CurTime() < ply.delay then
        DarkRP.notify(ply, 0, 7, "Veuillez Attendre "..Simple_Npc_Advert.SecondAntiSpamm.." Secondes Avant De Publier Une Nouvelle Publicité !")

        return
    end

    if not npc:GetClass() == "npc_advert" then return end

    if ply:GetPos():DistToSqr(npc:GetPos()) > 200 then
        if money >= Simple_Npc_Advert.PriceAdvertRepet then
            DarkRP.notify(ply, 0, 7, Simple_Npc_Advert.TextRepet .. Simple_Npc_Advert.Seconds .. " Secondes ["..Simple_Npc_Advert.NumberAdvert.." FOIS]")
            ply:addMoney(Simple_Npc_Advert.PriceAdvertRepet * -1)
            ply.delay = CurTime() + Simple_Npc_Advert.SecondAntiSpamm
        else
            DarkRP.notify(ply, 1, 7, Simple_Npc_Advert.TextPayeNo)

            return
        end

        for i = 1, #player.GetAll() do
            timer.Create("AdvertRepet", Simple_Npc_Advert.Seconds, Simple_Npc_Advert.NumberAdvert, function()
                DarkRP.talkToPerson(player.GetAll()[i], Color(173, 198, 13), "[Publicité] " .. ply:Nick(), AvertColorRepet, AdvertText, ply)
            end)
        end
    end
end)