local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    local hash = Config.PedProps['hash']
    local coords = Config.PedProps['location']
    QBCore.Functions.LoadModel(hash)
    local buyerPed = CreatePed(0, hash, coords.x, coords.y, coords.z-1.0, coords.w, false, false)
	TaskStartScenarioInPlace(buyerPed, 'WORLD_HUMAN_CLIPBOARD', true)
	FreezeEntityPosition(buyerPed, true)
	SetEntityInvincible(buyerPed, true)
	SetBlockingOfNonTemporaryEvents(buyerPed, true)

    exports['qb-target']:AddTargetEntity(buyerPed, {
        options = {
            {
                icon = 'fas fa-circle',
                label = 'Eşyaları Kontrol Et',
                action = function()
                    local pedPos = GetEntityCoords(PlayerPedId())
                    local dist = #(pedPos - vector3(coords))
                    if dist <= 5.0 then
                        ShowMenu()
                    end
                end,
            },
        },
        distance = 2.0
    })
end)

function ShowMenu()
    local resgisteredMenu = {
        id = 'item-menu',
        title = 'Satılabilir Eşyalar',
        options = {}
    }
    local options = {}
    for _, v in pairs(Config.Items) do
        local item = QBCore.Functions.HasItem(_)
        if item then
            options[#options+1] = {
                title = QBCore.Shared.Items[_]["label"],
                description = 'Fiyat: $'..v.price..' Adet Fiyatı',
                event = 'kevin-sellped:giveinput',
                args = {
                    item = QBCore.Shared.Items[_]['name'],
                    price = v.price
                }
            }
        end
    end
    resgisteredMenu["options"] = options
    lib.registerContext(resgisteredMenu)
    lib.showContext('item-menu')
end

RegisterNetEvent('kevin-sellped:giveinput', function (data)
    local header = 'Item: '..data.item
    local input = lib.inputDialog(header, {
        { type = 'input', label = 'Miktar', placeholder = '10' },
        { type = 'select', label = 'Ödeme Yöntemi', options = {
            { value = 'cash', label = 'Nakit', icon = 'fas fa-wallet'},
            { value = 'bank', label = 'Banka', icon = 'fas fa-landmark'},
        }},
    })
    if input == nil then return end
    if input[1] ~= nil then
        if input[2] ~= nil then
            TriggerServerEvent('kevin-sellped:sellitem',data.item, data.price, input[1], input[2])
        else
            QBCore.Functions.Notify('Ödeme yöntemi seçilmedi..', 'error', 4500)
        end
    else
        QBCore.Functions.Notify('Verilemedi.', 'error', 4500)
    end
end)