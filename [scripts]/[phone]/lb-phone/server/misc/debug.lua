CreateThread(function()
    if not Config.Debug then
        return
    end

    RegisterCommand("testmail", function(source)
        local phoneNumber = exports["lb-phone"]:GetEquippedPhoneNumber(source)
        local address = "test@lbphone.com"
        if phoneNumber then
            address = exports["lb-phone"]:GetEmailAddress(phoneNumber)
        end

        debugprint("Address: ", address)

        exports["lb-phone"]:SendMail({
            to = address,
            sender = "Test",
            subject = "Test",
            message = "Hello this is a test",
            actions = {
                {
                    label = "Server event!",
                    data = {
                        event = "phone:debug:mail",
                        isServer = true,
                        data = {
                            wow = "cool"
                        }
                    }
                },
                {
                    label = "Client event!",
                    data = {
                        event = "phone:debug:mail",
                        isServer = false,
                        data = {
                            wow = "cool"
                        }
                    }
                }
            }
        })
    end, false)

    RegisterNetEvent("phone:debug:mail", function(id, data)
        print(source, id, json.encode(data))
    end)

    RegisterCommand("testcall", function(src, args)
        local number = args[1]
        if not number then
            return
        end

        exports["lb-phone"]:CreateCall({
            phoneNumber = "123",
            source = src
        }, number, {
            requirePhone = false,
            hideNumber = true
        })
    end, false)


    RegisterCommand("addcontactserver", function(source, args)
        local number = exports["lb-phone"]:GetEquippedPhoneNumber(source)

        print("Number: ", number)

        exports["lb-phone"]:AddContact(number, {
            firstname = "David",
            lastname =  "Doe",
            number = args[1] or "1234567890",
            avatar = "https://i.imgur.com/2X1uYkU.png"
        })
    end, false)

    RegisterCommand("amberalertserver", function(source)
        local number = exports["lb-phone"]:GetEquippedPhoneNumber(source)

        if not number then return print("No number") end

        exports["lb-phone"]:SendAmberAlert(source, {
            title = "Amber Alert",
            content = "This is a test amber alert.",
            icon = "warning"
        })
    end, false)

    RegisterCommand("endcall", function(source)
        exports["lb-phone"]:EndCall(source)
    end, false)

    RegisterCommand("testamberexport", function(source)
        exports['lb-phone']:SendAmberAlert(source, {
            title = "Emergency Alert", -- the title of the notification
            content = "This is a test emergency alert", -- the description of the notification
            icon = "danger", -- the icon of the notification (optional), "warning" or "danger"
        })
    end, false)

    RegisterCommand("customCrypto", function()
        -- https://lbphone.com/assets/logo2.png
        exports["lb-phone"]:AddCustomCoin(
            "lb-coin",
            "LB Coin",
            "lbc",
            "https://lbphone.com/assets/logo2.png",
            18.5723523,
            {
                15.45253,
                16.234234,
                15.6843,
                17.000002,
                18.5723523,
            },
            0.5
        )
    end, false)
end)
