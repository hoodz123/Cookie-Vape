local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("cc-vape:server:effects", function(entity, coords)
	for _, player in pairs(QBCore.Functions.GetPlayers()) do
		TriggerClientEvent("cc-vape:client:effects", player, entity, coords)
    end
end)

QBCore.Functions.CreateUseableItem("vape", function(source, item)
    TriggerClientEvent("cc-vape:client:use", source)
end)
