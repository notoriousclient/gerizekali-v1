Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'false'

Config.PoliceOpen = false -- Can Police open all stashes

Config.Stashes = {
     ["stash1"] = {
         canAnyoneOpen = false,
        stashName = "stash1",
         coords = vector3(-349.6, -128.46, 39.01), 
         requirecid = false,
         jobrequired = true,
         gangrequired = false,
         gang = "",
         job = "mechanic1",
         cid = {""},  
         stashSize = 2250000,
         stashSlots = 125, 
     },
     ["stash2"] = {
        canAnyoneOpen = false,
       stashName = "stash2",
        coords = vector3(306.32, -1252.62, 37.78), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "japanese",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["stash3"] = {
        canAnyoneOpen = false,
       stashName = "stash3",
        coords = vector3(-828.85, -729.05, 28.06), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "records",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["stash4"] = {
        canAnyoneOpen = false,
       stashName = "stash4",
        coords = vector3(828.32, -118.2, 80.43), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "irishpub",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["stash5"] = {
        canAnyoneOpen = false,
       stashName = "serendipitydepo",
        coords = vector3(-2973.2, 34.77, 8.08), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "serendipity",
        cid = {""},  
        stashSize = 1750000,
        stashSlots = 125, 
    },
    ["stash6"] = {
        canAnyoneOpen = false,
       stashName = "doj",
        coords = vector3(-527.13, -187.34, 43.37), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "doj",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["stash7"] = {
        canAnyoneOpen = false,
       stashName = "mechanicmc",
        coords = vector3(2519.32, 4100.65, 35.59), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "mechanicmc",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["stash8"] = {
        canAnyoneOpen = false,
       stashName = "irishpub",
        coords = vector3(-1424.9, -457.6, 35.91), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "irishpub",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["stash9"] = {
        canAnyoneOpen = false,
       stashName = "104",
        coords = vector3(-167.39, -1534.46, 38.33), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "104",
        job = "",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["takashi"] = {
        canAnyoneOpen = false,
       stashName = "takashi31",
        coords = vector3(678.65, -752.86, 23.01), 
        requirecid = true,
        jobrequired = false,
        gangrequired = false,
        gang = "",
        job = "",
        cid = {"OHD06008"},  
        stashSize = 3250000,
        stashSlots = 125, 
    },
    ["jgarage"] = {
        canAnyoneOpen = false,
       stashName = "japanese31",
        coords = vector3(701.54, -745.64, 29.0), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "japanese",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["calsierra"] = {
        canAnyoneOpen = false,
       stashName = "ocrohest",
        coords = vector3(486.04, -1529.81, 29.47), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "calsierra",
        job = "",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["6block"] = {
        canAnyoneOpen = false,
       stashName = "6block",
        coords = vector3(1275.2, -1711.1, 54.77), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "6block",
        job = "",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["watts"] = {
        canAnyoneOpen = false,
       stashName = "watts",
        coords = vector3(-134.25, -1580.48, 34.21), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "watts",
        job = "",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["wutang"] = {
        canAnyoneOpen = false,
       stashName = "wutang",
        coords = vector3(-6.12, -1812.44, 20.7), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "wutang",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["uwu"] = {
        canAnyoneOpen = false,
        stashName = "uwuu",
        coords = vector3(-586.33, -1055.9, 22.34), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "uwu",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["bahama"] = {
        canAnyoneOpen = false,
        stashName = "bahamamas",
        coords = vector3(-1367.16, -626.46, 30.32), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "bahama",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["unicord"] = {
        canAnyoneOpen = false,
        stashName = "unicorn",
        coords = vector3(93.82, -1291.19, 29.26), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "unicorn",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["burgershot"] = {
        canAnyoneOpen = false,
        stashName = "burgershott",
        coords = vector3(-1183.1005, -899.9790, 13.7984), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "burgershot",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["pearls"] = {
        canAnyoneOpen = false,
        stashName = "pearlss",
        coords = vector3(-1848.6605, -1197.9796, 14.3092), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "pearls",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["irishpub"] = {
        canAnyoneOpen = false,
       stashName = "irishpub",
        coords = vector3(-1104.06, -1664.82, 7.35), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "irishpub",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["redline"] = {
        canAnyoneOpen = false,
       stashName = "redline",
        coords = vector3(-595.63, -914.16, 28.14), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "redline",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["ambulance"] = {
        canAnyoneOpen = false,
       stashName = "ambulance",
        coords = vector3(-436.73, -318.45, 34.91), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "ambulance",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["mob"] = {
        canAnyoneOpen = false,
       stashName = "mob",
        coords = vector3(433.21, -1718.19, 29.09), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "mob",
        job = "",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["lost"] = {
        canAnyoneOpen = false,
       stashName = "lost3",
        coords = vector3(977.4, -104.01, 74.85), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "lost",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["reddevil"] = {
        canAnyoneOpen = false,
        stashName = "reddevil",
        coords = vector3(547.31, -183.1, 54.45), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "mechanic2",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["carwushtuner"] = {
        canAnyoneOpen = false,
        stashName = "stashcarw",
        coords = vector3(-25.87, -1396.37, 24.56), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "tuner",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["brofxmanis"] = {
        canAnyoneOpen = false,
        stashName = "stashcarw",
        coords = vector3(-1525.61, 148.5, 60.79), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "tuner",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["breze"] = {
        canAnyoneOpen = false,
        stashName = "breze1",
        coords = vector3(148.81, -155.59, 60.49), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "pdm2",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["breze1"] = {
        canAnyoneOpen = false,
        stashName = "breze1x",
        coords = vector3(148.56, -150.44, 60.49), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "pdm2",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["mechanic15"] = {
        canAnyoneOpen = false,
        stashName = "mechanic15",
        coords = vector3(-599.12, -1756.3, 27.35), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "mechanic15",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["cockatoos"] = {
        canAnyoneOpen = false,
        stashName = "cockatoos",
        coords = vector3(-441.45, -32.18, 40.88), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "cockatoos",
        cid = {""},  
        stashSize = 2250000,
        stashSlots = 125, 
    },
    ["custom2"] = {
        canAnyoneOpen = false,
        stashName = "custom2",
        coords = vector3(-748.87, -217.46, 48.52), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "custom2",
        cid = {""},  
        stashSize = 1250000,
        stashSlots = 125, 
    },
    ["rivercafe"] = {
        canAnyoneOpen = false,
        stashName = "rivercafe",
        coords = vector3(675.24, -1647.54, 12.73), 
        requirecid = false,
        jobrequired = true,
        gangrequired = false,
        gang = "",
        job = "rivercafe",
        cid = {""},  
        stashSize = 1250000,
        stashSlots = 125, 
    },
}
