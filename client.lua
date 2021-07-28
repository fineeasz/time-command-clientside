-- RedLeaks discord.gg/49263TE8g8
-- RedLeaks discord.gg/49263TE8g8

ESX = nil
hour = 14 -- Stala godzina

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
        NetworkOverrideClockTime(hour, 0, 0)
	end
end)

RegisterCommand('time', function(source, args, rawCommand)
    if tonumber(args[1]) and tonumber(args[1]) > 0 and tonumber(args[1]) < 24 then
        hour = tonumber(args[1])
        ESX.ShowNotification('~g~Ustawiono ~s~godzine na ~g~'..tonumber(args[1]))
    else
        ESX.ShowNotification('~r~Podaj godzine! ~s~(1-23)')
    end
end)

-- RedLeaks discord.gg/49263TE8g8
-- RedLeaks discord.gg/49263TE8g8