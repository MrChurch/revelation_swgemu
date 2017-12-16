-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

local czerka_research_lok_mining_template = ScreenPlay:new {
	numberOfActs = 1,
	states = {},
	planetName = "lok",
	x = -6210,
	z = -1000,
	y = -1710,
	instance = 0,
	dungeonTimer = 7200,
	mode = "",
	scriptName = "czerka_research_lok_mining_template",
	spawnMap = {
        {"czerka_outpost_mining_minecrawler_guardian", 200 + math.random(120), -60.0, -60.3, -150, 270, 48, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 200 + math.random(120), -59.0, -59.6, -126, 270, 48, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -77.5, -59.9, -140, 190, 48, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 180 + math.random(120), -76.2, -60.3, -152, 330, 48, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 200 + math.random(120), -98.5, -60.3, -144.9, 330, 48, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 200 + math.random(120), -46.5, -60.3, -143.9, 330, 48, 0},
        {"czerka_outpost_mining_minecrawler_bonecrusher", 120 + math.random(120), -50.9, -59.3, -147.5, 330, 48, 0},
        {"czerka_outpost_mining_minecrawler", 0, -73, -60.0, -162.1, 90, 48, 1},
        {"czerka_outpost_mining_minecrawler", 100 + math.random(100), -70, -60.0, -130.7, 90, 48, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -123.5, -60.3, -149, 90, 47, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -120.5, -60.3, -165.5, 180, 47, 0},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -127.5, -60.3, -153.9, 180, 47, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 180 + math.random(200), -133.5, -60.3, -145.3, 270, 47, 0},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -122.5, -60.3, -137, 180, 47, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 180 + math.random(200), -124.1, -60.2, -173.6, 180, 47, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -123.9, -60.0, -198.5, 180, 46, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -84.4, -60.0, -217, 180, 44, 1},
        {"czerka_outpost_mining_minecrawler", 0, -120.6, -60.0, -217.1, 90, 46, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -94, -60.0, -221.6, 180, 45, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -94.2, -60.0, -227.7, 90, 45, 1},
        {"czerka_outpost_mining_minecrawler", 0, -116.6, -60.0, -217.3, 90, 45, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -98.6, -60.0, -216.7, 90, 45, 0},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -94.4, -60.0, -240.3, 0, 45, 1},
        {"czerka_outpost_mining_minecrawler", 0, -80.4, -60.0, -198.1, 180, 44, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -80.1, -60.0, -216.8, 0, 44, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -62.1, -60.0, -178.8, 90, 38, 1},
        {"czerka_outpost_mining_minecrawler", 0, -61.1, -60.0, -182.8, 90, 38, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -41.8, -60.0, -164.8, 180, 38, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -66.3, -60.0, -181.0, 180, 38, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 120 + math.random(200), -34.1, -60.0, -181.2, 60, 38, 1},
        {"czerka_outpost_mining_minecrawler", 0, -54.9, -60.0, -180.8, 222, 38, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -43.1, -60.0, -189.8, 0, 38, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -73.5, -60.0, -181.1, 270, 38, 0},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -79.9, -59.8, -185.2, 60, 38, 1},
        {"czerka_outpost_mining_minecrawler_bonecrusher", 0, -80.4, -60.0, -181.2, 160, 38, 1},
        {"czerka_outpost_controlled_miner", 0, -21.9, -60, -185.7, 180, 38, 1},
        {"czerka_outpost_controlled_miner", 0, -36.9, -60, -177.2, 90, 38, 1},
        {"czerka_outpost_guard_r", 0, -221.6, -60.0, -217.1, 90, 59, 1},
        {"czerka_outpost_guard", 0, -224.3, -60.0, -217.4, 90, 59, 1},
        {"czerka_outpost_mining_minecrawler", 0, -14.9, -60.0, -223.8, 35, 40, 1},
        {"czerka_outpost_mining_minecrawler", 0, -7.2, -60.0, -222.2, 125, 40, 0},
        {"czerka_outpost_mining_minecrawler", 0, -10.0, -60.0, -278.8, 210, 40, 1},
        {"czerka_outpost_mining_minecrawler", 0, -11.6, -60.0, -296.8, 230, 40, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -11.9, -60.0, -249.2, 215, 40, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -39.9, -60.0, -297.0, 185, 42, 1},
        {"czerka_outpost_mining_minecrawler", 0, -49.8, -60.0, -317.8, 90, 42, 1},
        {"czerka_outpost_mining_minecrawler", 0, -62.1, -60.0, -317.8, 0, 43, 1},
        {"czerka_outpost_mining_minecrawler", 0, -81.5, -60.0, -317.7, 75, 43, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -92.5, -60.0, -285.1, 270, 43, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -95, -60.0, -289.5, 270, 43, 0},
        {"czerka_outpost_mining_minecrawler", 0, -91.3, -60.0, -355.8, 0, 43, 1},
        {"czerka_outpost_mining_minecrawler", 0, -98.4, -60.0, -380.7, 75, 43, 1},
        {"czerka_outpost_mining_minecrawler", 0, -125.3, -60.0, -369.8, 0, 43, 1},
        {"czerka_outpost_mining_minecrawler", 0, -128.4, -60.0, -325.7, 175, 43, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -154.3, -60.0, -315.8, 185, 43, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -106.8, -60.2, -315.9, 180, 43, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -127.4, -60.2, -305.4, 180, 43, 0},
        {"czerka_outpost_mining_minecrawler_bonecrusher", 300, -97.1, -60.0, -284.3, 70, 43, 1},
        --miniboss kammer
        {"czerka_outpost_mining_minecrawler_guardian", 0, 23.8, -61.9, -297.6, 270, 41},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -1.7, -60.4, -297.0, 0, 41, 1},
        {"czerka_outpost_mining_minecrawler", 0, -173.9, -60.0, -304.0, 90, 63, 1},
        {"czerka_outpost_mining_minecrawler", 0, -173.9, -60.0, -279.4, 175, 63, 1},
        {"czerka_outpost_mining_minecrawler", 0, -178.8, -60.0, -217, 90, 61, 1},
        {"czerka_outpost_mining_minecrawler", 0, -166.2, -60.0, -257.1, 90, 62, 1},
        {"czerka_outpost_mining_minecrawler", 0, -179.9, -60.0, -256.4, 175, 62, 0},
        {"czerka_outpost_mining_minecrawler", 0, -178.4, -60.0, -236.7, 175, 62, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, -166.7, -60.0, -231.7, 185, 62, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -147.7, -60.4, -158.9, 0, 50, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 240, -146.7, -60.0, -188.7, 185, 50, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 50 + math.random(60), -177.7, -60.0, -121.0, 185, 52, 1},
        --miniboss kammer
        {"czerka_outpost_mining_minecrawler_soldier", 0, -176.4, -60.2, -145.9, 185, 55, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 0, -207.6, -60.4, -172.9, 0, 58, 1},
        {"czerka_outpost_mining_minecrawler", 0, -207.3, -60.0, -143.4, 200, 58, 0},
        {"czerka_outpost_mining_minecrawler", 0, -208.3, -60.0, -167.4, 75, 58, 1},
        {"czerka_outpost_mining_minecrawler", 0, -161.8, -60.0, -120.9, 200, 51, 1},
        {"czerka_outpost_controlled_guard", 0, 9.7, -60.0, -177.2, 90, 32, 1},
        {"czerka_outpost_controlled_guard_r", 0, 17.9, -60.0, -178.3, 0, 32, 1},
        {"czerka_outpost_controlled_guard", 0, 26.1, -60.0, -177.7, 0, 32, 0},
        {"czerka_outpost_controlled_captain_r", 0, 19.4, -60.0, -176.2, 180, 32, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, 13.9, -51.8, -143, 185, 31, 1},
        {"czerka_outpost_controlled_guard", 0, 18.3, -51.8, -143.6, 0, 31, 1},
        {"czerka_outpost_controlled_guard_r", 0, 7.3, -51.8, -142.9, 0, 31, 1},
        {"czerka_outpost_controlled_guard_r", 0, -19.2, -51.8, -141.2, 0, 31, 0},
        {"czerka_outpost_controlled_guard", 0, -20.7, -51.8, -141.2, 0, 31, 1},
        {"czerka_outpost_mining_minecrawler_bonecrusher", 0, -19.7, -52.0, -140.3, 0, 31, 1},
        {"czerka_outpost_controlled_captain", 0, -1.6, -52.0, -131, 0, 31, 1},
        {"czerka_outpost_controlled_guard", 0, 21.3, -64, -96.9, 90, 33, 1},
        {"czerka_outpost_controlled_guard_r", 0, -74.2, -20, -44.4, 180, 16, 1},
        {"czerka_outpost_controlled_guard", 0, -49.5, -20, -40.2, 180, 16, 0},
        {"czerka_outpost_controlled_miner", 0, -71.2, -20, -40.8, 160, 16, 1},
        {"czerka_outpost_controlled_lieutenant", 0, -49.5, -20, -41, 270, 16, 1},
        {"czerka_outpost_mining_minecrawler", 0, -29.2, -20.0, -40.7, 275, 16, 1},
        {"czerka_outpost_controlled_guard", 0, -5.1, -20, -45.0, 0, 16, 1},
        {"czerka_outpost_controlled_guard_r", 0, -4.0, -20, -45.0, 0, 16, 1},
        {"czerka_outpost_controlled_guard", 0, -4.5, -20, -46.0, 0, 16, 1},
        {"czerka_outpost_controlled_captain", 0, -3.6, -20.0, -54.5, 0, 18, 1},
        {"czerka_outpost_controlled_guard", 0, 8.0, -20, -56.0, 270, 18, 1},
        {"czerka_outpost_controlled_guard_r", 0, 20.2, -20, -55.7, 210, 18, 1},
        {"czerka_outpost_controlled_guard", 0, 17.5, -20, -79.0, 120, 18, 1},
        {"czerka_outpost_controlled_guard_r", 0, 0.5, -20, -79.0, 55, 18, 0},
        {"czerka_outpost_controlled_guard", 0, -3.7, -24, -105.0, 270, 24, 1},
        {"czerka_outpost_controlled_guard_r", 0, 38.6, -32, -107.5, 270, 24, 1},
        {"czerka_outpost_controlled_guard_r", 0, 38.6, -32, -108.5, 270, 24, 0},
        {"czerka_outpost_controlled_guard", 0, 38.6, -32, -109.5, 270, 24, 1},
        {"czerka_outpost_controlled_guard_r", 0, 38.6, -32, -110.5, 270, 24, 0},
        {"czerka_outpost_controlled_guard", 0, 38.6, -32, -111.5, 270, 24, 1},
        {"czerka_outpost_controlled_lieutenant_r", 600, 49.6, -32, -107.5, 270, 24, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, 54.9, -42.0, -106.7, 0, 24, 1},
        {"czerka_outpost_controlled_lieutenant", 0, 49.5, -42.0, -114.2, 0, 24, 1},
        {"czerka_outpost_controlled_guard", 0, 46.9, -42.0, -113.7, 0, 24, 1},
        {"czerka_outpost_controlled_guard", 0, 42.8, -32.0, -101.9, 0, 24, 1},
        {"czerka_outpost_controlled_guard_r", 240, 49.7, -52.0, -139.3, 0, 24, 1},
        {"czerka_outpost_controlled_captain", 0, 35.9, -28, -64.9, 90, 22, 1},
        {"czerka_outpost_controlled_guard", 0, 35.6, -28, -63.7, 270, 22, 1},
        {"czerka_outpost_controlled_guard_r", 0, -39.1, -32, -88.7, 270, 17, 0},--runner
        {"czerka_outpost_mining_minecrawler_guardian", 0, 15.2, -32, -79.6, 90, 23, 1},
        {"czerka_outpost_controlled_captain", 0, 38.1, -63.9, -92.2, 90, 33, 1},
        {"czerka_outpost_controlled_guard", 0, 42.1, -64, -97.2, 270, 33, 1},
        {"czerka_outpost_mining_minecrawler_bonecrusher", 0, -66.2, -64.0, -101.9, 0, 33, 0},
        {"czerka_outpost_controlled_guard", 0, 71.7, -64, -96.7, 270, 33, 1},
        {"czerka_outpost_controlled_guard", 0, 32.4, -64.0, -122.9, 270, 33, 1},
        {"czerka_outpost_controlled_guard", 0, 32.4, -64.0, -122.9, 270, 33, 1},
        {"czerka_outpost_controlled_guard", 0, 32.4, -64.0, -122.9, 270, 33, 0},
        {"czerka_outpost_mining_minecrawler_guardian", 0, 51, -64, -151.3, 90, 33, 1},
        
        --generatorroom
        {"czerka_outpost_controlled_technician", 0, 112, -68, -176, 0, 37, 1},
        {"czerka_outpost_controlled_technician", 0, 113, -68, -176, 0, 37, 1},
        {"czerka_outpost_controlled_technician", 0, 112, -68, -177, 0, 37, 1},
        {"czerka_outpost_controlled_technician", 0, 113, -68, -177, 0, 37, 1},
        {"czerka_outpost_mining_minecrawler_guardian", 300, 117, -68, -186.8, 90, 37, 1},
        {"czerka_outpost_controlled_lieutenant", 0, 119, -68, -179.8, 90, 37, 1},
        {"czerka_outpost_controlled_captain_r", 0, 121, -68, -181.8, 90, 37, 1},
        {"czerka_outpost_controlled_lieutenant_r", 0, 68, -52, -138, 90, 34, 1},
        --securityroom
        {"czerka_outpost_controlled_technician", 0, -34.4, -20, -56.1, 0, 17, 1},
        {"czerka_outpost_controlled_lieutenant_r", 0, -38, -20, -53.6, 0, 17, 0},
        {"czerka_outpost_controlled_technician", 0, -56.1, -20, -77, 90, 13, 1},
        {"czerka_outpost_controlled_technician", 0, -58.1, -20, -75, 180, 13, 1},
        {"czerka_outpost_mining_minecrawler_soldier", 0, 109.4, -20, -194.7, 185, 14, 1},
        {"czerka_outpost_mining_minecrawler", 0, -88.3, -60.0, -81.8, 90, 12, 1},
        {"czerka_outpost_controlled_technician", 0, -88.1, -20, -86.3, 180, 12, 1},
        {"czerka_outpost_controlled_guard_r", 0, -87.9, -20, -74.9, 0, 12, 1},
        -- entry
        {"czerka_outpost_guard_r", 0, -96.2, -20, -52.4, 90, 9, 1},
        {"czerka_outpost_guard", 0, -106.2, -20, -49.6, 90, 9, 1},
        {"czerka_outpost_guard_r", 0, -85.2, -20, -42.4, 180, 9, 1},
        {"czerka_outpost_guard", 0, -89.7, -20, -27.8, 180, 9, 1},
        {"czerka_outpost_guard_r", 0, -102.7, -20, -28.4, 180, 9, 1},
        {"czerka_outpost_lieutenant", 300, -89.7, -20, -44.6, 180, 9, 1},
        {"czerka_outpost_controlled_lieutenant", 0, -86.3, -20, -52.4, 180, 9, 1},
        {"czerka_outpost_guard", 0, -72.5, -20, 30.6, 180, 5, 1},
        {"czerka_outpost_guard_r", 0, -67.8, -20, 27, 180, 5, 1},
        {"czerka_outpost_guard_r", 0, -16.8, -12, -4.6, 0, 1, 1},
	},
	  spawnBombs = {
        {"eg6_bomb_droid", 0, 80, -64, -147, 0, 34},
        {"eg6_bomb_droid", 0, 86, -64, -147, 0, 34},
        {"eg6_bomb_droid", 0, 92, -64, -147, 0, 34},
        {"eg6_bomb_droid", 0, 98, -64, -147, 0, 34},
        {"eg6_bomb_droid", 0, 104, -64, -147, 0, 34},
        {"eg6_bomb_droid", 0, 110, -64, -147, 0, 34},
        {"eg6_bomb_droid", 0, 80, -64, -141, 0, 34},
        {"eg6_bomb_droid", 0, 86, -64, -141, 0, 34},
        {"eg6_bomb_droid", 0, 92, -64, -141, 0, 34},
        {"eg6_bomb_droid", 0, 98, -64, -141, 0, 34},
        {"eg6_bomb_droid", 0, 104, -64, -141, 0, 34},
        {"eg6_bomb_droid", 0, 110, -64, -141, 0, 34},
        {"eg6_bomb_droid", 0, 80, -64, -135, 0, 34},
        {"eg6_bomb_droid", 0, 86, -64, -135, 0, 34},
        {"eg6_bomb_droid", 0, 92, -64, -135, 0, 34},
        {"eg6_bomb_droid", 0, 98, -64, -135, 0, 34},
        {"eg6_bomb_droid", 0, 104, -64, -135, 0, 34},
        {"eg6_bomb_droid", 0, 110, -64, -135, 0, 34},
        {"eg6_bomb_droid", 0, 80, -64, -129, 0, 34},
        {"eg6_bomb_droid", 0, 86, -64, -129, 0, 34},
        {"eg6_bomb_droid", 0, 92, -64, -129, 0, 34},
        {"eg6_bomb_droid", 0, 98, -64, -129, 0, 34},
        {"eg6_bomb_droid", 0, 104, -64, -129, 0, 34},
        {"eg6_bomb_droid", 0, 110, -64, -129, 0, 34},
        {"eg6_bomb_droid", 0, 80, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 86, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 92, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 98, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 104, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 110, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 80, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 86, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 92, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 98, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 104, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 110, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 74, -64, -117, 0, 34},
        {"eg6_bomb_droid", 0, 74, -64, -123, 0, 34},
        {"eg6_bomb_droid", 0, 68, -64, -117, 0, 34},
   },
   bombCount = 39,
    -- type, x,z,y, radius, cell
    spawnMapTraps = {
        {"toxicnormal", -102.5, -67.5, -145.3, 4, 48},
        {"toxicnormal", -125.6, -67.5, -169.3, 3, 47},
        {"toxicnormal", -107.9, -67.2, -216.7, 4, 45},
        {"toxicHigh", -80.5, -67.5, -211.3, 4, 44},
        {"toxicnormal", -20.5, -63, -181.1, 9, 38},
        {"toxicnormal", -15.5, -67.5, -266.3, 3, 40},
        {"toxicnormal", -102.4, -67.5, -306.3, 11, 43},
        {"toxicnormal", -62.4, -67.5, -145.3, 4, 48},
        {"toxicnormal", -65.4, -63, -132, 4, 48},
        {"toxicHigh", -71.8, -63, -155.3, 5, 48},
        {"toxicnormal", -169.4, -63, -255, 5, 48},
        {"entrancetrap", -18, -11.1, 14, 4, 2},
        {"entrancetrap1", -88, -23.1, -36, 4, 9},
        {"entrancetrap2", -74, -23.1, -1, 5, 7},
        {"entrancetrap3", -3, -23.2, -69, 5, 18},
        {"medicfield", -46.3, -35.1, -112, 4, 20},
        {"halfblockedwaytrap", 34, -23.2, -93, 3, 22},
        {"minecardtunneltrap", 10, -35.2, -99, 7, 23},
        {"ambush", 65.7, -64, -97.4, 4, 33},
    },
    spawnMapParticles = {
        {"object/static/particle/pt_green_hanging_smoke.iff", -103.8, -60.2, -144.8, 48},
        {"object/static/particle/pt_green_hanging_smoke.iff", -125.2, -60.2, -169.4, 47},
        {"object/static/particle/pt_green_hanging_smoke.iff", -107.9, -60.2, -216.9, 45},
        {"object/static/particle/pt_green_hanging_smoke.iff", -80.2, -60.2, -211.8, 44},
        {"object/static/particle/pt_green_hanging_smoke.iff", -21.5, -60.2, -181.5, 38},
        {"object/static/particle/pt_green_hanging_smoke.iff", -15.5, -60.2, -266.3, 40},
        {"object/static/particle/pt_green_hanging_smoke.iff", -102.5, -60.2, -309.0, 43},
        {"object/tangible/dungeon/poison_gas_cloud.iff", -71.8, -60, -154.8, 48},
        {"object/tangible/dungeon/poison_gas_cloud.iff", -65.5, -60, -133.0, 48},
        {"object/tangible/dungeon/poison_gas_cloud.iff", -45.3, -60, -138.3, 48},
        {"object/tangible/dungeon/poison_gas_cloud.iff", -169.4, -60, -255.4, 62},
        {"object/tangible/dungeon/poison_gas_cloud.iff", 32.4, -20, -93.4, 22},
        {"object/tangible/dungeon/poison_gas_cloud.iff", 35.4, -20, -92.8, 22},
    },
    spawnMapTerminals = {
        --securitroom
        {"object/tangible/dungeon/terminal_free_s1.iff", -34, -20, -57.8, 0, 17},
        {"object/tangible/dungeon/terminal_free_s1.iff", -30, -20, -57.8, 0, 17},
        {"object/tangible/dungeon/terminal_free_s1.iff", -32, -20, -57.8, 0, 17},
        {"object/tangible/dungeon/terminal_free_s1.iff", -33, -20, -57.8, 0, 17},
    },
    spawnMapDecoration = {
        --securitroom
        {"object/tangible/furniture/imperial/data_terminal_s3.iff", -28.4, -20, -53.1, 270, 17, ""},
        {"object/tangible/furniture/imperial/data_terminal_s3.iff", -28.4, -20, -54.4, 270, 17, ""},
        {"object/tangible/furniture/imperial/data_terminal_s3.iff", -36.1, -20, -55.8, 90, 17, ""},
        --securearea
        {"object/tangible/dungeon/coal_bin_container.iff", 84.1, -32, -101, 90, 69, ""},
        {"object/tangible/dungeon/coal_bin_container.iff", -36.1, -20, -55.8, 90, 69, ""},
        --entrance
        {"object/tangible/dungeon/coal_bin_container.iff", -89.6, -20, -46.8, 90, 9, ""},
        {"object/tangible/dungeon/coal_bin_container.iff", -85.1, -20, -44.4, 90, 9, ""},
        {"object/tangible/dungeon/coal_bin_container.iff", -92.9, -20, -52.8, 90, 9, ""},
        -- medicfield
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -52.2, -32, -114.3, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -53.2, -32, -114.3, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -40.0, -32, -114.3, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -41.0, -32, -114.3, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -52.2, -32, -111.9, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -53.2, -32, -111.9, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -40.0, -32, -111.9, 90, 20, "Aspeticgas"},
        {"object/tangible/medicine/crafted/medpack_wound_action_a.iff", -41.0, -32, -111.9, 90, 20, "Aspeticgas"},
        --half blocked way
        {"object/tangible/dungeon/coal_bin_container.iff", 26.2, -20, -92.3, 90, 22 , ""},
    },
}

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")
local debuffFieldDialog = {"get code", "reprogram debuffield", "slice", "go away"}

function czerka_research_lok_mining_template:start()
    if (isZoneEnabled(self.planetName)) then
        self:spawnInstance()
        self:startInstance()
        self:spawnTraps()
        self:spawnParticles()
        self:spawnQuestCoalBin()
        self:spawnTravelterminal()
        self:spawnMedicTerminal()
        self:spawnTerminals()
        self:spawnDecoration()
        self:spawnVetilationTerminal()
        self:resetValues()
        self:spawnDebuffField()
    end
end

function czerka_research_lok_mining_template:startInstance()
    local pActiveArea = spawnActiveArea(self.planetName, "object/active_area.iff",  self.x -1, self.z-11.2, self.y-7, 7, readData("czerka_research_lok_mining_" .. self.instance .. ":cell1"))
    writeData("czerka_research_lok_mining_" .. self.instance .. ":InstanceStartTime", 0)
    if pActiveArea ~= nil then
        createObserver(ENTEREDAREA, self.scriptName, "startInstanceTimer", pActiveArea)
    end
end

function czerka_research_lok_mining_template:startInstanceTimer(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end

    if readData("czerka_research_lok_mining_" .. self.instance .. ":InstanceStartTime") == 0 then
        self:spawnMobiles()
        self:resetValues()
        self:spawnEndBoss()
        self:spawnBrainBug()
        self:spawnDroidEngineer()
        writeData("czerka_research_lok_mining_" .. self.instance .. ":InstanceStartTime", getTimestamp())
        createEvent(self.dungeonTimer * 1000, self.scriptName, "dungeonDestroyTimer", pActiveArea)
    end

    return 0
end

function czerka_research_lok_mining_template:dungeonDestroyTimer(pBoss, pPlayer)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":InstanceStartTime", 0)
    self:removeAllPlayersAndDestoyMobiles()
    return 0
end

function czerka_research_lok_mining_template:resetValues()
    writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap1", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap2", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap3", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":ambush", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossState", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossPoisoned", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDisease", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossElectricty", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugSpawns", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":minecardtrap", 0)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldCode", math.random(90999) + 9000 )
    writeData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldDeactive", 0 )
    writeData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation", 0 )
    writeData("czerka_research_lok_mining_" .. self.instance .. ":MSGTriggerQueen", 0 )
    writeData("czerka_research_lok_mining_" .. self.instance .. ":QueenID", 0 )
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 0)
end

function czerka_research_lok_mining_template:spawnInstance()
    local pCreature = getCreatureObject(readData("czerka_research_lok_mining:AnchorNPC"))
    local pBuilding = spawnBuilding(pCreature,"object/building/general/bunker_allum_mine.iff", self.x, self.y, 0, self.z)
    ScreenplayHelper:spawnSceneObjectlineToDirection(self.planetName, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", self.x - 16, self.y - 15, "E", 2, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection(self.planetName, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", self.x - 16, self.y - 15, "N", 2, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection(self.planetName, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", self.x + 16, self.y - 15, "N", 2, 16)
    ScreenplayHelper:spawnSceneObjectlineToDirection(self.planetName, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", self.x - 16, self.y + 15, "E", 2, 16)

    spawnMobile("lok", "freelancer_transports_lokmineonly", 60, self.x, 9999, self.y + 30, 0, 0)
    spawnMobile("lok", "czerka_outpost_lift_worker", 60, self.x, 9999, self.y + 31.5, 0, 0)

    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    for i = 1, 64, 1 do
        sceneCellObject:_setObject(building:getCell(i))
        writeData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. i, sceneCellObject:getObjectID())
    end
    spawnSceneObject(self.planetName, "object/static/structure/military/military_wall_med_imperial_16_style_01.iff", 5.9, -8, -4.2, readData("czerka_research_lok_mining_" .. self.instance .. ":cell1"), math.rad(0))
end

function czerka_research_lok_mining_template:spawnQuestCoalBin()
    local pSceneObject = spawnSceneObject(self.planetName, "object/tangible/dungeon/coal_bin_container.iff", -216.5, -59.8, -216.9, readData("czerka_research_lok_mining_" .. self.instance .. ":cell59"), math.rad(0))
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        writeData("czerka_research_lok_mining_" .. self.instance .. "_quest_coalbinID", scene:getObjectID())
    end)
end

function czerka_research_lok_mining_template:spawnMobiles()
    
    local count = 0
    local prefix = ""
    if self.mode == "hard" then
        prefix = "hard_"
    elseif self.mode == "easy" then
        prefix = "easy_"
    end
    for i,v in ipairs(self.spawnMap) do
        
        if (self.mode == "easy") then
            if (v[8] == 1) then
                self:spawnCreatures(prefix,v,count)
            end
        else
            self:spawnCreatures(prefix,v,count)
        end
        count = count + 1
    end
end

function czerka_research_lok_mining_template:spawnCreatures(prefix,v,count)
    local pCreature
    pCreature = spawnMobile(self.planetName, prefix .. v[1], v[2], v[3], v[4], v[5], v[6], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[7]))
    ObjectManager.withCreatureObject(pCreature, function(mobile)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":CreatureID_" .. count, mobile:getObjectID())
    end)
end

function czerka_research_lok_mining_template:spawnTerminals()
    for i,v in ipairs(self.spawnMapTerminals) do
        spawnSceneObject(self.planetName, v[1], v[2], v[3] , v[4], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[6]), math.rad(v[5]))
    end
end

function czerka_research_lok_mining_template:spawnDecoration()
    local pSceneObject
    for i,v in ipairs(self.spawnMapDecoration) do
        pSceneObject = spawnSceneObject(self.planetName, v[1], v[2], v[3] , v[4], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[6]), math.rad(v[5]))
        if (v[7] ~= "" and pSceneObject ~= nil) then
            LuaSceneObject(pSceneObject):setCustomObjectName(v[7])
        end
    end
end

function czerka_research_lok_mining_template:spawnTraps()
    local pActiveArea
    for i,v in ipairs(self.spawnMapTraps) do
       pActiveArea = spawnActiveArea(self.planetName, "object/active_area.iff", self.x + v[2], self.z + v[3], self.y + v[4], v[5], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[6]))
       if pActiveArea ~= nil then
          createObserver(ENTEREDAREA, self.scriptName, v[1], pActiveArea)
       end
    end
end

function czerka_research_lok_mining_template:spawnParticles()
    for i,v in ipairs(self.spawnMapParticles) do
        spawnSceneObject(self.planetName, v[1], v[2], v[3] , v[4], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[5]), 0, 0, 0, 0)
    end
end

function czerka_research_lok_mining_template:spawnDebuffField()
    local cell = readData("czerka_research_lok_mining_" .. self.instance .. ":cell20")
    local pFog = spawnSceneObject(self.planetName,"object/static/particle/pt_miasma_of_fog_red.iff", -47.9, -32, -113, cell, 0)
    ObjectManager.withSceneObject(pFog, function(fog)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":Fog1",fog:getObjectID())
    end)
    pFog = spawnSceneObject(self.planetName,"object/static/particle/pt_miasma_of_fog_red.iff", -48.7, -32, -113, cell, 0)
    ObjectManager.withSceneObject(pFog, function(fog)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":Fog2",fog:getObjectID())
    end)
end

function czerka_research_lok_mining_template:deSpawnDebuffField()
    ScreenplayHelper:destroy(readData("czerka_research_lok_mining_" .. self.instance .. ":Fog1"),true)
    ScreenplayHelper:destroy(readData("czerka_research_lok_mining_" .. self.instance .. ":Fog2"),true)
    return 0
end

function czerka_research_lok_mining_template:toxicnormal(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    
    local ventilationValue = readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation")
    if ventilationValue == 1 then
        return 0
    end
    if ventilationValue == 2 then
        return 0
    end    
    
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Something smells strange here... *****")

        local type = math.random(3)
 
        local objectID = readData("czerka_research_lok_mining_" .. self.instance .. ":QueenID")
        if objectID ~= 0 then
            if type == 1 then
                player:addDotState(pMovingObject, DISEASED, 100, HEALTH, 360, 240, objectID, 0)
                player:addDotState(pMovingObject, DISEASED, 100, ACTION, 360, 240, objectID, 0)
                player:addDotState(pMovingObject, DISEASED, 25, MIND, 360, 240, objectID, 0)
            else
                player:addDotState(pMovingObject, DISEASED, 200, CONSTITUTION, 360, 240, objectID, 0)
                player:addDotState(pMovingObject, DISEASED, 200, STAMINA, 360, 240, objectID, 0)
                player:addDotState(pMovingObject, DISEASED, 50, WILLPOWER, 360, 240, objectID, 0)
            end

            player:addDotState(pMovingObject, POISONED, getRandomNumber(200) + 250, HEALTH, 40, 300, objectID, 0)
            player:addDotState(pMovingObject, POISONED, getRandomNumber(200) + 250, ACTION, 40, 300, objectID, 0)
            end
        return 0
    end)
end

function czerka_research_lok_mining_template:entrancetrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap") == 1 then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Crawler coming out of the damaged pipes ! *****")
        local cell2 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell2")
        local pSceneObject = spawnSceneObject("lok", "object/static/particle/particle_lg_explosion.iff", -20.1, -12, 14.2, cell2, math.rad(270))
        --createEvent(10000, self.scriptName, "destroyExplosionAnimation", pSceneObject)
        local prefix = ""
        if self.mode == "hard" then
            prefix = "hard_"
        elseif self.mode == "easy" then
            prefix = "easy_"
        end
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler", 0, -15.6, -12, 15.7, 222, cell2)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler", 0, -15.5, -12, 8.3, 222, cell2)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler", 0, -20.3, -12, 7.1, 90, cell2)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler", 0, -20.6, -12, 14.4, 90, cell2)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap", 1)
        return 0
    end)
end

function czerka_research_lok_mining_template:ambush(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":ambush") == 1 then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Crawler coming out of the damaged pipes ! *****")
        local cell33 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell33")
        local prefix = ""
        if self.mode == "hard" then
            prefix = "hard_"
        elseif self.mode == "easy" then
            prefix = "easy_"
        end
        spawnMobile("lok",  prefix .. "czerka_outpost_controlled_guard_r", 0, -21.7, -64, -96.6, 270, cell33)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_guardian", 0, 69.5, -64, -96.8, 270, cell33)
        spawnMobile("lok",  prefix .. "czerka_outpost_controlled_lieutenant_r", 0, 43.7, -64, -97.1, 90, cell33)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":ambush", 1)
        return 0
    end)
end

function czerka_research_lok_mining_template:entrancetrap1(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap1") == 1 then
        return 0
    end
    local cell9 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell9")
    local prefix = ""
    if self.mode == "hard" then
        prefix = "hard_"
    elseif self.mode == "easy" then
        prefix = "easy_"
    end

    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_lieutenant", 0, -87, -20, -53.9, 222, cell9)     
    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_lieutenant_r", 0, -84.7, -20, -50, 222, cell9)
    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_guard", 0, -85.9, -20, -46.7, 90, cell9)
    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_guard_r", 0, -92.4, -20, -50.2, 90, cell9)
    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_guard", 0, -93.2, -20, -54.2, 90, cell9)
    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_guard_r", 0, -89.1, -20, -49.6, 90, cell9)
    spawnMobile("lok",  prefix .. "czerka_outpost_controlled_guard", 0, -88.3, -20, -54.3, 90, cell9)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap1", 1)
    return 0
end

function czerka_research_lok_mining_template:entrancetrap2(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap2") == 1 then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Crawler coming out of the damaged pipes ! *****")
        local cell7 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell7")
        local pSceneObject = spawnSceneObject("lok", "object/static/particle/particle_lg_explosion.iff", -75.1, -20, -6, cell7, math.rad(270))
        --createEvent(10000, self.scriptName, "destroyExplosionAnimation", pSceneObject)
        local prefix = ""
        if self.mode == "hard" then
            prefix = "hard_"  
        elseif self.mode == "easy" then
            prefix = "easy_"
        end
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler", 0, -72.3, -20, -6, 222, cell7)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, -76.9, -20, 2.8, 222, cell7)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap2", 1)
        return 0
    end)
end

function czerka_research_lok_mining_template:entrancetrap3(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap3") == 1 then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Crawler coming out of the damaged pipes ! *****")
        local cell18 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell18")
        local pSceneObject = spawnSceneObject("lok", "object/static/particle/particle_lg_explosion.iff", -5.1, -21, -67.3, cell18, math.rad(270))
        createEvent(10000, self.scriptName, "destroyExplosionAnimation", pSceneObject)
        local prefix = ""
        if self.mode == "hard" then
            prefix = "hard_"
        elseif self.mode == "easy" then
            prefix = "easy_"
        end

        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, -4.5, -20, -72.2, 222, cell18)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, -5.2, -20, -62.5, 222, cell18)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap3", 1)
        return 0
    end)
end

function czerka_research_lok_mining_template:toxicHigh(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    local ventilationMultiplier = 10
    if self.mode == "easy" then
        ventilationMultiplier = 4          
    end
    local ventilationValue = readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation")
    if ventilationValue == 1 then
        ventilationMultiplier = 2
    end
    if ventilationValue == 2 then
        return 0
    end    
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Thats Bad Poison ! ... *****")

        local objectID = readData("czerka_research_lok_mining_" .. self.instance .. ":QueenID")
        if objectID ~= 0 then
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 45, STRENGTH, 360, 160, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 45, QUICKNESS, 360, 160, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 20, FOCUS, 360, 160, objectID, 0)
            player:addDotState(pMovingObject, POISONED, getRandomNumber(400) + ventilationMultiplier * 45, HEALTH, 40, 200, objectID, 0)
            player:addDotState(pMovingObject, POISONED, getRandomNumber(400) + ventilationMultiplier * 45, ACTION, 40, 200, objectID, 0)
        end
        return 0
    end)
end

function czerka_research_lok_mining_template:halfblockedwaytrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    local ventilationMultiplier = 20

    ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Crawler coming out of the damaged pipes ! *****")
        local cell22 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell22")
        local pSceneObject = spawnSceneObject("lok", "object/static/particle/particle_lg_explosion.iff", 34.5, -20, -93.6, cell22, math.rad(270))
        --createEvent(10000, self.scriptName, "destroyExplosionAnimation", pSceneObject)
        local prefix = ""
        if self.mode == "hard" then
            prefix = "hard_"
        elseif self.mode == "easy" then
            prefix = "easy_"
        end

        spawnMobile("lok",  "deadly_czerka_outpost_mining_minecrawler_guardian", 0, 35.4, -20, -90, 90, cell22)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_bonecrusher", 0, 35.4, -20, -90, 90, cell22)
        spawnMobile("lok",  "deadly_czerka_outpost_mining_minecrawler_guardian", 0, 23.8, -20, -94.1, 222, cell22)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, 23.8, -20, -94.1, 222, cell22)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":entrancetrap2", 1)
        
        local ventilationValue = readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation")
        if ventilationValue == 2 then
            return 0
        end  
    
        player:sendSystemMessage("***** Thats Bad Poison ! ... *****")
        ObjectManager.withActiveArea(pActiveArea, function(activeArea)
            local objectID = activeArea:getObjectID()
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 100, STRENGTH, 900, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 100, QUICKNESS, 900, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 100, CONSTITUTION, 900, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 100, STAMINA, 900, 250, objectID, 0)
            player:addDotState(pMovingObject, DISEASED, ventilationMultiplier * 50, FOCUS, 900, 250, objectID, 0)
            player:addDotState(pMovingObject, POISONED, getRandomNumber(800) + ventilationMultiplier * 200, HEALTH, 30, 250, objectID, 0)
            player:addDotState(pMovingObject, POISONED, getRandomNumber(800) + ventilationMultiplier * 200, ACTION, 30, 250, objectID, 0)
        end)
    end)
    return 0
end

function czerka_research_lok_mining_template:minecardtunneltrap(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":minecardtrap") == 1 then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** Crawler coming out of the Minecard tunnelsystem ! *****")
        local cell23 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell23")
        local pSceneObject = spawnSceneObject("lok", "object/static/particle/particle_lg_explosion.iff", 6.5, -28, -98.7, cell23, math.rad(270))
        --createEvent(15000, self.scriptName, "destroyExplosionAnimation", pSceneObject)
        local prefix = ""
        if self.mode == "hard" then
            prefix = "hard_"
        elseif self.mode == "easy" then
            prefix = "easy_"
        end
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, 6.5, -28, -98.7, 0, cell23)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, 6.2, -28, -97.7, 0, cell23)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_soldier", 0, 5, -28, -98.7, 0, cell23)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_guardian", 0, 1, -28, -100, 0, cell23)
        spawnMobile("lok",  prefix .. "czerka_outpost_mining_minecrawler_bonecrusher", 0, 5.8, -28, -94.2, 0, cell23)

        writeData("czerka_research_lok_mining_" .. self.instance .. ":minecardtrap", 1)
        return 0
    end)
end

function czerka_research_lok_mining_template:medicfield(pActiveArea, pMovingObject)
    if not (SceneObject(pMovingObject):isPlayerCreature()) then
        return 0
    end
    if readData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldDeactive") == 1 then
        return 0
    end
    return ObjectManager.withCreatureObject(pMovingObject, function(player)
        player:sendSystemMessage("***** you walking through the steril field, all chemicals are cured in your body *****")
        ScreenplayHelper:doRemoveBuffsFromPlayer(pMovingObject)
        return 0
    end)
end

function czerka_research_lok_mining_template:createObserver(pTerminal, CustomName, ObserverName)
    ObjectManager.withSceneObject(pTerminal, function(terminal)
	terminal:setCustomObjectName(CustomName)
    end)
    createObserver(OBJECTRADIALUSED, self.scriptName, ObserverName, pTerminal)
    return 0
end
-- ----------------------------- ventilation ---------------------------------
function czerka_research_lok_mining_template:spawnVetilationTerminal()
    local pTerminal = spawnSceneObject(self.planetName, "object/tangible/dungeon/terminal_free_s1.iff", -28.4, -20, -55.7, readData("czerka_research_lok_mining_" .. self.instance .. ":cell17"), math.rad(270))
    self:createObserver(pTerminal, "Ventilation Control", "terminalVentilationSecRoom")
  
    pTerminal = spawnSceneObject(self.planetName, "object/tangible/dungeon/terminal_free_s1.iff", 114, -68.0, -186.0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell37"), math.rad(270))
    self:createObserver(pTerminal, "Main Ventilation Control", "terminalVentilationGeneratorRoom")
end

function czerka_research_lok_mining_template:terminalVentilationSecRoom(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
        if (pPlayer ~= nil) then
            local player = LuaCreatureObject(pPlayer)
            if readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation") == 2 then
                player:sendSystemMessage("The Main Power is activated and this terminal is locked.")
            else
                if readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation") == 1 then
                    player:sendSystemMessage("The Ventilationsystem is online. you need to wait")
                else
                    player:sendSystemMessage("The Ventilationsystem is disabled, you overwrite it for 30 seconds")
                    createEvent(30000, self.scriptName, "disableventilation", pCreature)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation", 1 )
                end
            end
        end
    end
    return 0
end

function czerka_research_lok_mining_template:terminalVentilationGeneratorRoom(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
        if (pPlayer ~= nil) then
            local player = LuaCreatureObject(pPlayer)
            local ventValue = readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation")
            if ventValue == 1 then
                player:sendSystemMessage("The Ventilationsystem is online. You activated the Main Power !")
                writeData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation", 2 )
            elseif ventValue == 2 then
                player:sendSystemMessage("The Mainpower is restored the Ventilationsystem is back online !")
            else
                player:sendSystemMessage("The Ventilationsystem is disabled, the console seems locked !")
            end
        end
    end
    return 0
end

function czerka_research_lok_mining_template:disableventilation(pMobile, pPlayer)
    if readData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation") == 1 then
        writeData("czerka_research_lok_mining_" .. self.instance .. ":Ventilation", 0 )
    end
    return 0
end

   
        
-- ----------------------------- debuff field ---------------------------------
function czerka_research_lok_mining_template:spawnMedicTerminal()
    local pTerminal = spawnSceneObject(self.planetName, "object/tangible/dungeon/terminal_free_s1.iff", -56.9, -32.0, -118.6, readData("czerka_research_lok_mining_" .. self.instance .. ":cell20"), math.rad(0))
    self:createObserver(pTerminal, "Emergencyfield Control", "terminalMedicDisableField")

    pTerminal = spawnSceneObject(self.planetName, "object/tangible/dungeon/terminal_free_s1.iff", -38.7, -32.0, -114.3, readData("czerka_research_lok_mining_" .. self.instance .. ":cell20"), math.rad(0))
    self:createObserver(pTerminal, "Emergencyfield Control", "terminalMedicFirst")

    pTerminal = spawnSceneObject(self.planetName, "object/tangible/dungeon/terminal_free_s1.iff", -31, -20, -57.8, readData("czerka_research_lok_mining_" .. self.instance .. ":cell17"), math.rad(0))
    self:createObserver(pTerminal, "Emergencyfield Control", "terminalMedicDisableField")
end

function czerka_research_lok_mining_template:terminalMedicDisableField(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
       local suiManager = LuaSuiManager()
       suiManager:sendKeypadSui(pKeypad, pPlayer, self.scriptName, "terminalMedicCallback")
    end
    return 0
end

function czerka_research_lok_mining_template:terminalMedicFirst(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
        if (pPlayer ~= nil) then
            local player = LuaCreatureObject(pPlayer)
            local message = "*** This Terminal is disabled you see the Code " .. readData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldCode") .. " on the display"
            player:sendSystemMessage(message)
        end
    end
    return 0
end

function czerka_research_lok_mining_template:terminalMedicCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        local keypadCode = readData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldCode")
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == keypadCode) then
                if readData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldDeactive") == 1 then
                    player:sendSystemMessage("The Field is enabled and the terminal is not working. you need to wait")
                else
                    player:sendSystemMessage("You have successfully entered the code, the Emergencyfield is 10 sec deactivated")
                    createEvent(10000, self.scriptName, "deactivatemedicField", pCreature)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldDeactive", 1 ) 
                    player:sendSystemMessage("You have successfully entered the code, the Emergencyfield is 10 sec deactivated")
                    self:deSpawnDebuffField()
                end
            else
                player:sendSystemMessage("The code is not valid.")
            end
        elseif (pressedButton == "slice") then
            CreatureObject(pCreature):sendSystemMessage("Your technology knowledge is not high enough.")
        elseif (pressedButton == "keycard") then
            CreatureObject(pCreature):sendSystemMessage("You have no valid keycard")
        end
    end)
    return 0
end

function czerka_research_lok_mining_template:deactivatemedicField(pMobile, pPlayer)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":MedicFieldDeactive", 0 ) 
    self:spawnDebuffField()
    return 0
end

function czerka_research_lok_mining_template:spawnTravelterminal()
    local pTerminal = spawnSceneObject(self.planetName, "object/tangible/furniture/imperial/data_terminal_s1.iff", 2.5, -8.0, -6.3, readData("czerka_research_lok_mining_" .. self.instance .. ":cell1"), math.rad(270))
    self:createObserver(pTerminal, "Lift up", "terminalLiftUp")
end

function czerka_research_lok_mining_template:terminalLiftUp(pTerminal, pPlayer)
    local player = LuaSceneObject(pPlayer)
    if (player ~= nil) then
	local creature = CreatureObject(pPlayer)
	if not creature:isInCombat() and player:getDistanceTo(pTerminal) < 10 then
	        player:switchZone(self.planetName, -1720, 12.3, -6195, 0)
	else
		creature:sendSystemMessage("You can not escape from the dungeon at this moment.")
	end
    end
    return 0
end

function czerka_research_lok_mining_template:despawnCreature(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        CombatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

-- -----------------------------
-- -- functions End Boss      --

function czerka_research_lok_mining_template:spawnEndBoss()
    local prefix = ""
    if self.mode == "hard" then
        prefix = "hard_"
    elseif self.mode == "easy" then
        prefix = "easy_"
    end

    local pBoss = spawnMobile("lok", prefix .. "czerka_outpost_mining_minecrawler_queen", 0, -60, -60, -138, 0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell48"))
    if pBoss ~= nil then
        ObjectManager.withCreatureObject(pBoss, function(mobile)
            writeData("czerka_research_lok_mining_" .. self.instance .. ":QueenID", mobile:getObjectID())
        end)
        createObserver(DAMAGERECEIVED,self.scriptName,"logicEndBoss", pBoss)
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
        createEvent(self.dungeonTimer * 1000, self.scriptName, "despawnCreature", pBoss)
    end
    return 0
end

function czerka_research_lok_mining_template:logicEndBoss(pBoss, pPlayer)
    local modevalue = 8
    if self.mode == "hard" then
        modevalue = 12
    elseif self.mode == "easy" then
        modevalue = 4
    end

    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if (CombatHelper:checkCreatureWorldDistance(self.x -60, self.y -136, 20, pBoss) == false) then
                player:sendSystemMessage(" ***** The creature moving back to the nest *****")
                CombatHelper:healCreatureToMax(pBoss)
                CombatHelper:forcePeace(pBoss)
                writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossState", 0)
                writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossPoisoned", 0)
                writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDisease", 0)
                writeData("czerka_research_lok_mining_" .. self.instance .. ":MSGTriggerQueen", 0 ) 
            else
                local msgTrigger = readData("czerka_research_lok_mining_" .. self.instance .. ":MSGTriggerQueen")
                if (CombatHelper:logicBossState(pBoss, 0.8, "czerka_research_lok_mining_" .. self.instance .. ":endBossState", 0) == true) then
                    if  readData("czerka_research_lok_mining_" .. self.instance .. ":endBossDisease") == 0 then
                        if msgTrigger == 0 then 
                            spatialChat(pBoss, "Humngrrrrr *the bug's taint change to yellow*")
                            writeData("czerka_research_lok_mining_" .. self.instance .. ":MSGTriggerQueen", 1 )
                            createEvent(20000, self.scriptName, "endBossDisease", pBoss)
                        end
                        player:sendSystemMessage("*** You hit the creature, out of the wounds comes a yellow gas *** !")
                        local objectID = boss:getObjectID()
                        player:addDotState(pMovingObject, DISEASED, 65 * modevalue, QUICKNESS, 240, 250, objectID, 0)
                        player:addDotState(pMovingObject, DISEASED, 65 * modevalue, STRENGTH, 240, 250, objectID, 0)
                        player:addDotState(pMovingObject, DISEASED, 25 * modevalue, FOCUS, 240, 250, objectID, 0)
                        player:addDotState(pMovingObject, DISEASED, 65 * modevalue, CONSTITUTION, 240, 250, objectID, 0)
                        player:addDotState(pMovingObject, DISEASED, 65 * modevalue, STAMINA, 240, 250, objectID, 0)
                        player:addDotState(pMovingObject, DISEASED, 25 * modevalue, WILLPOWER, 240, 250, objectID, 0)
                        CombatHelper:setHAM(pBoss, 0.8)
                    end
                end
                if (CombatHelper:logicBossState(pBoss, 0.6, "czerka_research_lok_mining_" .. self.instance .. ":endBossState", 1) == true) then
                    if readData("czerka_research_lok_mining_" .. self.instance .. ":endBossPoisoned") == 0 then
                        if msgTrigger == 1 then 
                            spatialChat(pBoss, "Grrrrrrrrrrr *the bug's taint change to red*")
                            writeData("czerka_research_lok_mining_" .. self.instance .. ":MSGTriggerQueen", 2 )
                            createEvent(23000, self.scriptName, "endBossPoisoned", pBoss)
                        end
                        player:sendSystemMessage("*** You hit the creature, out of the wounds comes a red gas *** !")
                        local objectID = boss:getObjectID()
                        player:addDotState(pMovingObject, POISONED, 150 * modevalue, HEALTH, 15, 230, objectID, 0)
                        player:addDotState(pMovingObject, POISONED, 150 * modevalue, ACTION, 15, 230, objectID, 0)
                        player:addDotState(pMovingObject, POISONED, 75 * modevalue, MIND, 15, 230, objectID, 0)
                        CombatHelper:setHAM(pBoss, 0.6)
                    end
                end
                if (CombatHelper:logicBossState(pBoss, 0.5, "czerka_research_lok_mining_" .. self.instance .. ":endBossState", 2) == true) then
                    local cell48 = readData("czerka_research_lok_mining_" .. self.instance .. ":cell48")
                    spawnMobile("lok",  "czerka_outpost_mining_minecrawler_soldier", 0, -56.4, -60.3, -146, 270, cell48)
                    spawnMobile("lok",  "czerka_outpost_mining_minecrawler_soldier", 0, -59.0, -59.6, -126, 270, cell48)
                    spawnMobile("lok",  "czerka_outpost_mining_minecrawler_soldier", 0,  -77.5, -59.9, -140, 190, cell48)
                    spawnMobile("lok",  "czerka_outpost_mining_minecrawler_soldier", 0, -76.2, -60.3, -152, 330, cell48)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossState", 3)
                end
                if (CombatHelper:logicBossState(pBoss, 0.25, "czerka_research_lok_mining_" .. self.instance .. ":endBossState", 3) == true) then
                    if readData("czerka_research_lok_mining_" .. self.instance .. ":endBossElectricy") == 0 then
                        if msgTrigger == 2 then
                            spatialChat(pBoss, "zzzZZzzzzZZZZ *the bug's taint change to blue*")
                            writeData("czerka_research_lok_mining_" .. self.instance .. ":MSGTriggerQueen", 3)
                            createEvent(21000, self.scriptName, "endBossElectricty", pBoss)
                        end
                        player:sendSystemMessage("*** You hit the creature, you are shocked by electricity *** !")
                        player:sendSystemMessage("*** You hit the creature, you are shocked by electricity *** !")
                        player:inflictDamage(pPlayer, 0, 150 * modevalue, 0)
                        CombatHelper:setHAM(pBoss, 0.25)
                    end
                end
            end
        end)
    end)
    return 0
end

function czerka_research_lok_mining_template:endBossDisease(pBoss, pPlayer)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDisease", 1)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossState", 1)
    spatialChat(pBoss, "Humngrrrrr *the bug's taint change back to normal*")
    return 0
end
function czerka_research_lok_mining_template:endBossPoisoned(pBoss, pPlayer)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossPoisoned", 1)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossState", 2)
    spatialChat(pBoss, "Grrrrrrrrrrr *the bug's taint change back to normal*")
    return 0
end

function czerka_research_lok_mining_template:endBossElectricty(pBoss, pPlayer)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossElectricty", 1)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossState", 4)
    spatialChat(pBoss, "zzzZZzzzzZZZZ *the bug's taint change back to normal*")
    return 0
end
function czerka_research_lok_mining_template:rewardEndBoss(pMobile, pPlayer)
    writeData("czerka_research_lok_mining_" .. self.instance .. ":QueenID", 0)
    local callback = function(groupMember)
      local pPlayerObject = groupMember:getPlayerObject()
      local xp = 20000
      if self.mode == "hard" then
          xp = 30000
      elseif self.mode == "easy" then
          xp = 10000
      end
      if pPlayerObject ~= nil then
          local playerObject = PlayerObject(pPlayerObject)
          groupMember:sendSystemMessage("You've been awarded " .. xp .. " of Jedi experience.")
          playerObject:addExperience("jedi_general", xp)
          playerObject:addExperience("gcw_xp", 50)
      end
    end
    ObjectManager.withCreatureObject(pPlayer, function(player)
        if self.mode == "hard" then
            CombatHelper:awardGroupKillwithCondCheck(pPlayer, self.x -60, self.z -65, self.y-140, 60, "Czerka_Jedi_State", 32, "You feel a inner glow", "revelation_jedi_state", 1, callback)
        else
            CombatHelper:awardGroupKillwithCondCheck(pPlayer, self.x -60, self.z -65, self.y-140, 60, "Czerka_Jedi_State", 16, "You feel a inner glow", "revelation_jedi_state", 1, callback)
        end
        --CombatHelper:increaseFactionStanding(pPlayer, "czerka_outpost", 1500)
    end)
    return 0
end

-- -----------------------------
-- -- functions BrainBug Boss --

function czerka_research_lok_mining_template:spawnBrainBug()
    
    local prefix = ""
    if self.mode == "hard" then
        prefix = "hard_"
    elseif self.mode == "easy" then
        prefix = "easy_"
    end   
     
    local pBoss = spawnMobile("lok", prefix .. "czerka_outpost_mining_minecrawler_brain", 0, -20, -52, -161.5, 0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell64"))
    if pBoss ~= nil then
        createObserver(DAMAGERECEIVED,self.scriptName,"logicBrainBug", pBoss)
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardBrainBug", pBoss)
        createEvent(self.dungeonTimer * 1000, self.scriptName, "despawnCreature", pBoss)
    end
    return 0
end

function czerka_research_lok_mining_template:logicBrainBug(pBoss, pPlayer)

    local modevalue = 8
    if self.mode == "hard" then
        modevalue = 12
    elseif self.mode == "easy" then
        modevalue = 5
    end 
        
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if ( CombatHelper:checkCreatureWorldDistance(self.x -20, self.y -161, 15, pBoss) == false) then
                player:sendSystemMessage(" ***** The creature moving back to the nest *****")
                CombatHelper:healCreatureToMax(pBoss)
                CombatHelper:forcePeace(pBoss)
                writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugSpawns", 0)
            else
                local count = readData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugSpawns")
 
                if (count <= modevalue) then
                      local selector = math.random(12)
                      if selector == 1 then
                          player:sendSystemMessage("*** The Creature call controlled minions ! ***")
                          writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugSpawns", count + 1)
                          local pAdd = spawnMobile("lok",  "czerka_outpost_controlled_lieutenant", 0, -28, -52, -156, 0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell64"))
                          ObjectManager.withCreatureObject(pAdd, function(mobile)
                              writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugAddCreatureID_" .. count + 1, mobile:getObjectID())
                          end)
                      elseif selector == 2 then
                          player:sendSystemMessage("*** The Creature call controlled minions ! ***")
                          writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugSpawns", count + 1)
                          local pAdd = spawnMobile("lok",  "czerka_outpost_controlled_guard", 0, -20, -52, -149, 0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell64"))
                          ObjectManager.withCreatureObject(pAdd, function(mobile)
                              writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugAddCreatureID_" .. count + 1, mobile:getObjectID())
                          end)
                      elseif selector == 3 then
                          player:sendSystemMessage("*** The Creature call controlled minions ! ***")
                          writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugSpawns", count + 1)
                          local pAdd = spawnMobile("lok",  "czerka_outpost_mining_minecrawler_soldier", 0, -13.8, -52, -162, 0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell64"))
                          ObjectManager.withCreatureObject(pAdd, function(mobile)
                              writeData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugAddCreatureID_" .. count + 1, mobile:getObjectID())
                          end)
                      elseif selector == 4 then
                          local objectID = boss:getObjectID()
                          player:addDotState(pMovingObject, DISEASED, 15 *  modevalue, STAMINA, 140, 30 *  modevalue, objectID, 0)
                          player:addDotState(pMovingObject, DISEASED, 15 *  modevalue, CONSTITUTION, 140, 30 *  modevalue, objectID, 0)
                          player:addDotState(pMovingObject, DISEASED, 5 *  modevalue, FOCUS, 140, 30 *  modevalue, objectID, 0)
                          player:addDotState(pMovingObject, DISEASED, 5 *  modevalue, MIND, 140, 30 *  modevalue, objectID, 0)                          
                      end
                 end
            end
        end)
    end)
    return 0
end

function czerka_research_lok_mining_template:rewardBrainBug(pMobile, pPlayer)
    local callback = function(groupMember)
      local pPlayerObject = groupMember:getPlayerObject()
      local xp = 20000
      if self.mode == "hard" then
          xp = 30000
      elseif self.mode == "easy" then   
          xp = 10000              
      end
      if pPlayerObject ~= nil then
        local playerObject = PlayerObject(pPlayerObject)
	      groupMember:sendSystemMessage("You've been awarded " .. xp .. " of Jedi experience.")
        playerObject:addExperience("jedi_general", xp)
        playerObject:addExperience("gcw_xp", 50)
      end
    end
    ObjectManager.withCreatureObject(pPlayer, function(player)
        CombatHelper:awardGroupKillwithCondCheck(pPlayer, self.x -20, self.z -60, self.y -160, 50, "Czerka_Jedi_State", 8, "You feel a inner glow", "revelation_jedi_state", 1, callback)
        --CombatHelper:increaseFactionStanding(pPlayer, "czerka_outpost", 1500)
    end)
    return 0
end

-- -----------------------------
-- -- functions DroidEnginner Boss --

function czerka_research_lok_mining_template:spawnDroidEngineer()
    
    local prefix = ""
    if self.mode == "hard" then
        prefix = "hard_"
    elseif self.mode == "easy" then
        prefix = "easy_"
    end   
     
    local pBoss = spawnMobile("lok", prefix .. "czerka_outpost_crazy_droidengineer", 0, 95.7, -64, -133.7, 0, readData("czerka_research_lok_mining_" .. self.instance .. ":cell34"))
    if pBoss ~= nil then
        createObserver(DAMAGERECEIVED,self.scriptName,"logicDroidEngineer", pBoss)
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardDroidEngineer", pBoss)
        createEvent(self.dungeonTimer * 1000, self.scriptName, "despawnCreature", pBoss)
        writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 0)
    end
    return 0
end

function czerka_research_lok_mining_template:logicDroidEngineer(pBoss, pPlayer)
    ObjectManager.withCreatureObject(pBoss, function(boss)
        ObjectManager.withCreatureObject(pPlayer, function(player)
            if (CombatHelper:checkCreatureWorldDistance(self.x + 97, self.y -133, 15, pBoss) == false) then
                player:sendSystemMessage(" ***** Harry using a Bacta Bomb and end the battle *****")
                CombatHelper:healCreatureToMax(pBoss)
                CombatHelper:forcePeace(pBoss)
                writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 0)
            else
                if (CombatHelper:logicBossState(pBoss, 0.95, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 0) == true) then
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 1)
                    self:spawnBombFog(3)
                elseif (CombatHelper:logicBossState(pBoss, 0.90, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 1) == true) then
                    self:spawnBombFog(4)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 2)   
                elseif (CombatHelper:logicBossState(pBoss, 0.85, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 2) == true) then
                    self:spawnBombFog(7) 
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 3)    
                elseif (CombatHelper:logicBossState(pBoss, 0.80, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 3) == true) then
                    self:spawnBombFog(5)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 4)
                elseif (CombatHelper:logicBossState(pBoss, 0.75, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 4) == true) then
                    self:spawnBombFog(math.random(5) + 1)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 5)
                elseif (CombatHelper:logicBossState(pBoss, 0.70, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 5) == true) then
                    self:spawnBombFog(7)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 6)
                elseif (CombatHelper:logicBossState(pBoss, 0.65, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 6) == true) then
                    self:spawnBombFog(5)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 7)
                elseif (CombatHelper:logicBossState(pBoss, 0.60, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 7) == true) then
                    self:spawnBombFog(4)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 8)
                elseif (CombatHelper:logicBossState(pBoss, 0.55, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 8) == true) then
                    self:spawnBombFog(8)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 9)
                elseif (CombatHelper:logicBossState(pBoss, 0.50, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 9) == true) then
                    self:spawnBombFog(6)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 10)
                elseif (CombatHelper:logicBossState(pBoss, 0.45, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 10) == true) then
                    self:spawnBombFog(4)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 11)
                elseif (CombatHelper:logicBossState(pBoss, 0.40, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 11) == true) then
                    self:spawnBombFog(6)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 12)
                elseif (CombatHelper:logicBossState(pBoss, 0.35, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 12) == true) then
                    self:spawnBombFog(5)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 13)
                elseif (CombatHelper:logicBossState(pBoss, 0.30, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 13) == true) then
                    self:spawnBombFog(8)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 14)
                elseif (CombatHelper:logicBossState(pBoss, 0.25, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 14) == true) then
                    self:spawnBombFog(6)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 15)
                elseif (CombatHelper:logicBossState(pBoss, 0.20, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 15) == true) then
                    self:spawnBombFog(4)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 16)
                elseif (CombatHelper:logicBossState(pBoss, 0.15, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 16) == true) then
                    self:spawnBombFog(7)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 17)
                elseif (CombatHelper:logicBossState(pBoss, 0.10, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 17) == true) then
                    self:spawnBombFog(6)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 18)
                elseif (CombatHelper:logicBossState(pBoss, 0.05, "czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 18) == true) then
                    self:spawnBombFog(5)
                    writeData("czerka_research_lok_mining_" .. self.instance .. ":endBossDroidState", 19)
                end
            end
        end)
    end)
    return 0
end

function czerka_research_lok_mining_template:spawnBombFog(spawnCount)
    for i = 1, spawnCount, 1 do
        local count = math.random(self.bombCount -1)
        local v = self.spawnBombs[count]
        local pCreature = spawnMobile(self.planetName, v[1], v[2], v[3], v[4], v[5], v[6], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[7]))   
        if pCreature ~= nil then
            createEvent(7000, self.scriptName, "despawn", pCreature)
            createEvent(7000, self.scriptName, "spawnExplosion", pCreature)
            local pFog =  spawnSceneObject(self.planetName,"object/static/particle/pt_steam_rise.iff", v[3], v[4] , v[5], readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. v[7]), 0)
            createEvent(7000, self.scriptName, "despawn", pFog)
        end
     end        
    return 0
end

function czerka_research_lok_mining_template:spawnExplosion(pScene)
    local modevalue = 9
    local dmgValue = 1500
    if self.mode == "hard" then
        modevalue = 10
        dmgValue = 2000
    elseif self.mode == "easy" then
        modevalue = 8
        dmgValue = 1000
    end 
    
    ObjectManager.withSceneObject(pScene, function(scene)
        spawnSceneObject(self.planetName,"object/static/particle/particle_lg_explosion.iff", scene:getPositionX(), scene:getPositionZ() , scene:getPositionY(), readData("czerka_research_lok_mining_" .. self.instance .. ":cell34"), 0)
        local pCell = getSceneObject(readData("czerka_research_lok_mining_" .. self.instance .. ":cell34"))
        ObjectManager.withSceneObject(pCell, function(cell)
            for j = cell:getContainerObjectsSize(), 1, -1 do
                local pObject = cell:getContainerObject(j - 1)
                ObjectManager.withSceneObject(pObject, function(object)
                    if object:isPlayerCreature() then
                        if CombatHelper:checkCreatureWorldDistance(object:getWorldPositionX(), object:getWorldPositionY(), modevalue, pScene) then
                           LuaCreatureObject(pObject):inflictDamage(pObject, 0, dmgValue, 0)
                        end
                    end
                 end)
             end
        end)
    end)  
    return 0
end

function czerka_research_lok_mining_template:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end

function czerka_research_lok_mining_template:rewardDroidEngineer(pMobile, pPlayer)
    local callback = function(groupMember)
      local pPlayerObject = groupMember:getPlayerObject()
      local xp = 20000
      if self.mode == "hard" then
          xp = 30000
      elseif self.mode == "easy" then   
          xp = 10000    
      end
      if pPlayerObject ~= nil then
        local playerObject = PlayerObject(pPlayerObject)
        groupMember:sendSystemMessage("You've been awarded " .. xp .. " of Jedi experience.")
        playerObject:addExperience("jedi_general", xp)
        playerObject:addExperience("gcw_xp", 50)
      end
    end
    return 0
end

-- -----------------------------
-- -- functions cleanuptask   --

function czerka_research_lok_mining_template:removeAllPlayersAndDestoyMobiles()
    local playersToRemove = {}
    for i = 1, 64, 1 do
        local pCell = getSceneObject(readData("czerka_research_lok_mining_" .. self.instance .. ":cell" .. i))
        ObjectManager.withSceneObject(pCell, function(cell)
            for j = cell:getContainerObjectsSize(), 1, -1 do
                local pObject = cell:getContainerObject(j - 1)
                ObjectManager.withSceneObject(pObject, function(object)
                    if object:isPlayerCreature() then
                        table.insert(playersToRemove, pObject)
                    end
                 end)
             end
      	end)
    end

    local pCreature
    local count = 0
    for i,v in ipairs(self.spawnMap) do
        ScreenplayHelper:destroy(readData("czerka_research_lok_mining_" .. self.instance .. ":CreatureID_" .. count), deleteFromDB)
        count = count + 1
    end
 
    for i = 1, 15, 1 do
        ScreenplayHelper:destroy(readData("czerka_research_lok_mining_" .. self.instance .. ":BrainBugAddCreatureID_" .. i), deleteFromDB)
    end

    for i = 1, #playersToRemove, 1 do
        local pObject = playersToRemove[i]
        createEvent(1000, self.scriptName, "removePlayer", pObject)
    end
    return 0
end

function czerka_research_lok_mining_template:removePlayer(pPlayer)
	if pPlayer == nil then
		return 0
	end
	  local player = LuaSceneObject(pPlayer)
    if (player ~= nil) then
        player:switchZone(self.planetName, -1720, 12.3, -6195, 0)
    end
    return 0
end

return czerka_research_lok_mining_template


