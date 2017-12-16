-- Author: Matthias Muente (matthias.muente@gmx.de)
-- https://revelationonline.net

worldevent_widowmaker = ScreenPlay:new {
    states = {},
    planetName = "naboo",
    scriptName = "worldevent_widowmaker",
    spawnMap = {
            {"buff_npc_worldevent", 0, 5061, 9999, -1544, 999, 0, 0},
            {"buff_npc_worldevent", 0, 5312, 9999, -1584, 999, 0, 0},
            {"buff_npc_worldevent", 0, 5066, 9999, -1427, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4753, 9999, -1355, 999, 0, 0},
            {"buff_npc_worldevent", 0, 5155, 9999, -1500, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4883.8, 9999, -1440, 999, 0, 0},
            {"buff_npc_worldevent", 0, -21, -63.1, -260, 999, 7, 0},
            {"buff_npc_worldevent", 0, 4946, 9999, -1484, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4856, 9999, -1360, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4740, 9999, -1435, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4724, 332.5, -1298, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4817, 9999, -1470, 999, 0, 0},
            {"buff_npc_worldevent", 0, -67.7, -70.9, -82.3, 999, 9, 0},
            {"buff_npc_worldevent", 0, -3.7, -45.1, -143.9, 999, 5, 0},
    	    {"buff_npc_worldevent", 0, -62.4, -68.2, -110.1, 999, 9, 0},
            {"widowmaker_hunter", 0, 4735.8, 9999, -1475, 999, 0, 0},
            {"widowmaker_hunter", 0, 4642.8, 9999, -1328, 999, 0, 1},
            {"widowmaker_hunter", 0, 4651.8, 9999, -1258, 999, 0, 0},
            {"widowmaker_hunter", 0, 4852.8, 9999, -1217, 999, 0, 1},
            {"widowmaker_hunter", 0, 5026.8, 9999, -1290, 999, 0, 1},
            {"widowmaker_hunter", 0, 4814.8, 9999, -1189, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4783.8, 9999, -1264, 999, 0, 1},--
            {"widowmaker_hunter", 0, 4803.8, 9999, -1292, 999, 0, 0},
            {"widowmaker_soldier", 0, 4821.8, 9999, -1291, 999, 0, 1},
            {"widowmaker_soldier", 0, 5027.8, 9999, -1527, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4762.8, 9999, -1286, 999, 0, 0},
            {"widowmaker_webber", 0, 4759.8, 9999, -1320, 999, 0 ,1},
            {"widowmaker_hunter", 0, 4717.8, 9999, -1352, 999, 0, 0},
            {"widowmaker_webber", 0, 4687.8, 9999, -1355, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4614, 9999, -1346, 999, 0, 0},
            {"widowmaker_soldier", 0, 4600, 9999, -1372, 999, 0, 1},
            {"widowmaker_aggressor", 180, 4668, 9999, -1295, 999, 0, 0},
            {"widowmaker_baby", 0, 4718, 318, -1227, 999, 0, 1},
            {"widowmaker_hunter", 0, 4792, 313, -1224, 999, 0, 1},
            {"widowmaker_aggressor", 240, 4837, 9999, -1257, 999, 0, 0},
            {"widowmaker_baby", 0, 4863, 9999, -1295, 999, 0, 1},
            {"widowmaker_webber", 0, 4873, 9999, -1341, 999, 0, 0},
            {"widowmaker_aggressor", 280, 4804, 9999, -1360, 999, 0, 0},
            {"widowmaker_soldier", 0, 4763, 9999, -1377, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4737, 9999, -1398, 999, 0, 0},
            {"widowmaker_webber", 0, 4689, 9999, -1441, 999, 0, 0},
            {"widowmaker_baby", 0, 4787, 9999, -1468, 999, 0, 1},
            {"widowmaker_soldier", 0, 4822, 9999, -1442, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4851, 9999, -1379, 999, 0, 0},
            {"widowmaker_baby", 0, 4871, 9999, -1408, 999, 0, 1},
            {"widowmaker_webber", 0, 4855, 9999, -1433, 999, 0, 0},
            {"widowmaker_aggressor", 0, 4923, 9999, -1430, 999, 0, 1},
            {"widowmaker_hunter", 0, 4979, 9999, -1506, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4960, 9999, -1524, 999, 0, 0},
            {"widowmaker_soldier", 0, 4901, 9999, -1514, 999, 0, 1},
            {"widowmaker_aggressor", 0, 5007, 9999, -1543, 999, 0, 0},
            {"widowmaker_baby", 0, 5019, 9999, -1500, 999, 0, 0},
            {"widowmaker_aggressor", 180, 5033, 9999, -1459, 999, 0, 1},
            {"widowmaker_webber", 0, 5044, 9999, -1420, 999, 0, 1},
            {"widowmaker_soldier", 0, 5087, 9999, -1393, 999, 0, 1},          
            {"widowmaker_hunter", 0, 5077, 9999, -1483, 999, 0, 1},
            {"widowmaker_aggressor", 180, 5128, 9999, -1490, 999, 0, 0},
            {"widowmaker_webber", 0, 5015, 9999, -1393, 999, 0, 1},             
            {"widowmaker_webber", 0, 5081, 9999, -1429, 999, 0, 1},
            {"widowmaker_aggressor", 0, 5097, 9999, -1526, 999, 0, 1},
            {"widowmaker_soldier", 0, 5032, 9999, -1555, 999, 0, 0},
            {"widowmaker_aggressor", 120, 4996, 9999, -1548, 999, 0, 1},
            {"widowmaker_hunter", 0, 4921, 9999, -1530, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4973, 9999, -1473, 999, 0, 1},
            {"widowmaker_aggressor", 240, 4965, 9999, -1430, 999, 0, 0},
            {"widowmaker_baby", 0, 4974, 9999, -1400, 999, 0, 1},
            {"widowmaker_soldier", 210, 4899, 9999, -1420, 999, 0, 0},
            {"widowmaker_aggressor", 0, 4878, 9999, -1386, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4827, 9999, -1350, 999, 0, 0},
            {"widowmaker_webber", 0, 4805, 9999, -1341, 999, 0, 1},
            {"widowmaker_aggressor", 300, 4781, 9999, -1295, 999, 0, 0},
            {"widowmaker_baby", 0, 4734, 9999, -1324, 999, 0, 1},
            {"widowmaker_aggressor", 180, 4772, 9999, -1410, 999, 0, 0},
            {"widowmaker_soldier", 0, 4744, 9999, -1337, 999, 0, 1},
            {"widowmaker_hunter", 0, 4773, 9999, -1392, 999, 0, 0},
            {"widowmaker_baby", 0, 4819, 9999, -1398, 999, 0, 1},
            {"widowmaker_webber", 0, 4838, 9999, -1410, 999, 0, 0},
            {"widowmaker_aggressor", 0, 4909, 9999, -1435, 999, 0, 1},
            {"widowmaker_soldier", 0, 4848, 9999, -1400, 999, 0, 0},
            {"widowmaker_webber", 0, 4826, 9999, -1413, 999, 0, 1},
            {"widowmaker_webber", 0, 4797, 9999, -1419, 999, 0, 1},
            {"widowmaker_soldier", 0, 4978, 9999, -1534, 999, 0, 1},
            {"widowmaker_soldier", 0, 4951, 9999, -1502, 999, 0, 0},
            {"widowmaker_hunter", 0, 4965, 9999, -1457, 999, 0, 0},
            {"widowmaker_soldier", 0, 4942, 9999, -1412, 999, 0, 0},
            {"widowmaker_soldier", 0, 4949, 9999, -1385, 999, 0, 1},
            {"widowmaker_soldier", 0, 4776, 9999, -1435, 999, 0, 1},
            {"widowmaker_soldier", 0, 4741, 9999, -1440, 999, 0, 1},
            {"widowmaker_soldier", 0, 4727, 9999, -1521, 999, 0, 0},
            {"widowmaker_hunter", 0, 4721, 9999, -1380, 999, 0, 1},
            {"widowmaker_hunter", 0, 4703, 9999, -1287, 999, 0, 0},
            {"widowmaker_hunter", 0, 4756, 9999, -1223, 999, 0, 1},
            {"widowmaker_soldier", 0, 4807, 9999, -1273, 999, 0, 1},
            -- inside
            {"widowmaker_hunter", 0, 10, -15, -7.1, 999, 1, 0},
            {"widowmaker_soldier", 0, 10.1, -23.7, -26.6, 999, 2, 0},
            {"widowmaker_soldier", 0, 6.4, -23.7, -24.8, 999, 2, 0},
            {"widowmaker_hunter", 0, -7.3, -40.2, -59.4, 999, 3, 0},
            {"widowmaker_soldier", 0, 10.3, -40.3, -73.1, 999, 3, 0},
            {"widowmaker_soldier", 0, 9.5, -40.9, -61.1, 999, 3, 0},
            {"widowmaker_webber", 0, 43, -46.1, -62, 999, 4, 0},
            {"widowmaker_baby", 0, 51.3, -46, -92.6, 999, 4, 0},
            {"widowmaker_soldier", 0, 37.5, -45.8, -86.4, 999, 4, 0},
            {"widowmaker_soldier", 0, 34.6, -45.7, -98.5, 999, 4, 0},
            {"widowmaker_hunter", 0, -6.1, -45.1, -137.6, 999, 5, 0},
            {"widowmaker_soldier", 0, 13.3, -45.3, -125, 999, 5, 0},
            {"widowmaker_webber", 0, 28.8, -46.1, -124.4, 999, 5, 0},
            {"widowmaker_soldier", 0, 41.9, -57.1, -176.8, 999, 5, 0},
            {"widowmaker_soldier", 0, 39.9, -55.2, -153.3, 999, 5, 0},
            {"widowmaker_webber", 0, 21.1, -61.5, -182, 999, 5, 0},
            {"widowmaker_hunter", 0, -10.6, -64.1, -181, 999, 6, 0},
            {"widowmaker_soldier", 0, -11.1, -64.5, -199.3, 999, 6, 0},
            {"widowmaker_soldier", 0, -29.2, -65, -181.7, 999, 6, 0},
            {"widowmaker_hunter", 0, -69.7, -69, -176.7, 999, 8, 0},
            {"widowmaker_soldier", 0, -84, -69.6, -201.1, 999, 8, 0},
            {"widowmaker_hunter", 0, -120.8, -69.7, -188.6, 999, 8, 0},
            {"widowmaker_soldier", 0, -121.3, -70.3, -146.6, 999, 8, 0},
            {"widowmaker_hunter", 0, -88.8, -69.8, -130, 999, 8, 0},
            {"widowmaker_webber", 0, -97.6, -70.1, -103.7, 999, 8, 0},
            {"widowmaker_soldier", 220, -48.5, -69.1, -109.4, 999, 9, 0},
            {"widowmaker_soldier", 220, -49.3, -69.5, -85.2, 999, 9, 0},
            {"widowmaker_soldier", 220, -32.5, -70.4, -90.2, 999, 9, 0},
            {"widowmaker_soldier", 240, -29.8, -70, -108.9, 999, 9, 0},
            {"widowmaker_hunter", 0, -29.1, -80, -149, 999, 10, 0},
            {"widowmaker_webber", 0, -42.1, -83.4, -146.8, 999, 10, 0},
            {"widowmaker_webber", 0, -57.7, -92.1, -144.6, 999, 10, 0},
            {"widowmaker_soldier", 0, -85.9, -99.5, -90, 999, 11, 0},
            {"widowmaker_soldier", 240, -101.6, -100.3, -120.8, 999, 11, 0},
            {"widowmaker_soldier", 120, -79.6, -100.7, -115.3, 999, 11, 0},
            {"widowmaker_soldier", 240, -101, -100.0, -100.9, 999, 11, 0},
    },
        spawnMapLow = {
            {"buff_npc_worldevent", 0, 5061, 9999, -1544, 999, 0, 0},
            {"buff_npc_worldevent", 0, 5312, 9999, -1584, 999, 0, 0},
            {"buff_npc_worldevent", 0, 5066, 9999, -1427, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4753, 9999, -1355, 999, 0, 0},
            {"buff_npc_worldevent", 0, 5155, 9999, -1500, 999, 0, 0},            
            {"buff_npc_worldevent", 0, 4883.8, 9999, -1440, 999, 0, 0},
            {"buff_npc_worldevent", 0, -21, -63.1, -260, 999, 7, 0},
            {"buff_npc_worldevent", 0, 4946, 9999, -1484, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4856, 9999, -1360, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4740, 9999, -1435, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4724, 332.5, -1298, 999, 0, 0},
            {"buff_npc_worldevent", 0, 4817, 9999, -1470, 999, 0, 0},
            {"buff_npc_worldevent", 0, -67.7, -70.9, -82.3, 999, 9, 0},
            {"buff_npc_worldevent", 0, -3.7, -45.1, -143.9, 999, 5, 0},
    	    {"buff_npc_worldevent", 0, -62.4, -68.2, -110.1, 999, 9, 0},
            {"widowmaker_hunter_low", 0, 4735.8, 9999, -1475, 999, 0, 0},
            {"widowmaker_hunter_low", 0, 4651.8, 9999, -1258, 999, 0, 0},
            {"widowmaker_hunter_low", 0, 4852.8, 9999, -1217, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 5026.8, 9999, -1290, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 4783.8, 9999, -1264, 999, 0, 1},--
            {"widowmaker_hunter_low", 0, 4803.8, 9999, -1292, 999, 0, 0},
            {"widowmaker_soldier_low", 0, 4821.8, 9999, -1291, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 4762.8, 9999, -1286, 999, 0, 0},
            {"widowmaker_webber_low", 0, 4759.8, 9999, -1320, 999, 0 ,1},
            {"widowmaker_hunter_low", 0, 4717.8, 9999, -1352, 999, 0, 0},
            {"widowmaker_webber_low", 0, 4687.8, 9999, -1355, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 4614, 9999, -1346, 999, 0, 0},
            {"widowmaker_aggressor_low", 180, 4668, 9999, -1295, 999, 0, 0},
            {"widowmaker_baby_low", 0, 4718, 318, -1227, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 4792, 313, -1224, 999, 0, 1},
            {"widowmaker_aggressor_low", 240, 4837, 9999, -1257, 999, 0, 0},
            {"widowmaker_aggressor_low", 0, 4737, 9999, -1398, 999, 0, 0},
            {"widowmaker_webber_low", 0, 4689, 9999, -1441, 999, 0, 0},
            {"widowmaker_baby_low", 0, 4787, 9999, -1468, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 4923, 9999, -1430, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 4979, 9999, -1506, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 4960, 9999, -1524, 999, 0, 0},
            {"widowmaker_soldier_low", 0, 4901, 9999, -1514, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 5007, 9999, -1543, 999, 0, 0},
            {"widowmaker_baby_low", 0, 5019, 9999, -1500, 999, 0, 0},
            {"widowmaker_aggressor_low", 180, 5033, 9999, -1459, 999, 0, 1},
            {"widowmaker_webber_low", 0, 5044, 9999, -1420, 999, 0, 1},
            {"widowmaker_soldier_low", 0, 5087, 9999, -1393, 999, 0, 1},          
            {"widowmaker_aggressor_low", 180, 5128, 9999, -1490, 999, 0, 0},
            {"widowmaker_webber_low", 0, 5015, 9999, -1393, 999, 0, 1},             
            {"widowmaker_webber_low", 0, 5081, 9999, -1429, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 5097, 9999, -1526, 999, 0, 1},
            {"widowmaker_soldier_low", 0, 5032, 9999, -1555, 999, 0, 0},
            {"widowmaker_aggressor_low", 120, 4996, 9999, -1548, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 4921, 9999, -1530, 999, 0, 1},
            {"widowmaker_aggressor_low", 0, 4973, 9999, -1473, 999, 0, 1},
            {"widowmaker_aggressor_low", 240, 4965, 9999, -1430, 999, 0, 0},
            {"widowmaker_baby_low", 0, 4974, 9999, -1400, 999, 0, 1},
            {"widowmaker_soldier_low", 210, 4899, 9999, -1420, 999, 0, 0},
            {"widowmaker_aggressor", 0, 4878, 9999, -1386, 999, 0, 1},
            {"widowmaker_aggressor", 0, 4827, 9999, -1350, 999, 0, 0},
            {"widowmaker_aggressor_low", 300, 4781, 9999, -1295, 999, 0, 0},
            {"widowmaker_baby", 0, 4734, 9999, -1324, 999, 0, 1},
            {"widowmaker_aggressor", 180, 4772, 9999, -1410, 999, 0, 0},
            {"widowmaker_soldier_low", 0, 4744, 9999, -1337, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 4773, 9999, -1392, 999, 0, 0},
            {"widowmaker_baby", 0, 4819, 9999, -1398, 999, 0, 1},
            {"widowmaker_webber", 0, 4838, 9999, -1410, 999, 0, 0},
            {"widowmaker_aggressor", 0, 4909, 9999, -1435, 999, 0, 1},
            {"widowmaker_soldier", 0, 4848, 9999, -1400, 999, 0, 0},
            {"widowmaker_webber", 0, 4826, 9999, -1413, 999, 0, 1},
            {"widowmaker_webber", 0, 4797, 9999, -1419, 999, 0, 1},
            {"widowmaker_soldier", 0, 4978, 9999, -1534, 999, 0, 1},
            {"widowmaker_hunter", 0, 4965, 9999, -1457, 999, 0, 0},
            {"widowmaker_soldier_low", 0, 4942, 9999, -1412, 999, 0, 0},
            {"widowmaker_soldier", 0, 4949, 9999, -1385, 999, 0, 1},
            {"widowmaker_soldier_low", 0, 4741, 9999, -1440, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 4721, 9999, -1380, 999, 0, 1},
            {"widowmaker_hunter_low", 0, 4703, 9999, -1287, 999, 0, 0},
            {"widowmaker_hunter_low", 0, 4756, 9999, -1223, 999, 0, 1},
            {"widowmaker_soldier_low", 0, 4807, 9999, -1273, 999, 0, 1},
            -- inside
            {"widowmaker_hunter_low", 0, 10, -15, -7.1, 999, 1, 0},
            {"widowmaker_soldier", 0, 10.1, -23.7, -26.6, 999, 2, 0},
            {"widowmaker_soldier", 0, 6.4, -23.7, -24.8, 999, 2, 0},
            {"widowmaker_hunter_low", 0, -7.3, -40.2, -59.4, 999, 3, 0},
            {"widowmaker_soldier", 0, 10.3, -40.3, -73.1, 999, 3, 0},
            {"widowmaker_soldier_low", 0, 9.5, -40.9, -61.1, 999, 3, 0},
            {"widowmaker_webber_low", 0, 43, -46.1, -62, 999, 4, 0},
            {"widowmaker_baby", 0, 51.3, -46, -92.6, 999, 4, 0},
            {"widowmaker_soldier", 0, 37.5, -45.8, -86.4, 999, 4, 0},
            {"widowmaker_soldier", 0, 34.6, -45.7, -98.5, 999, 4, 0},
            {"widowmaker_hunter_low", 0, -6.1, -45.1, -137.6, 999, 5, 0},
            {"widowmaker_soldier_low", 0, 13.3, -45.3, -125, 999, 5, 0},
            {"widowmaker_webber_low", 0, 28.8, -46.1, -124.4, 999, 5, 0},
            {"widowmaker_soldier", 0, 41.9, -57.1, -176.8, 999, 5, 0},
            {"widowmaker_soldier", 0, 39.9, -55.2, -153.3, 999, 5, 0},
            {"widowmaker_webber_low", 0, 21.1, -61.5, -182, 999, 5, 0},
            {"widowmaker_hunter_low", 0, -10.6, -64.1, -181, 999, 6, 0},
            {"widowmaker_soldier", 0, -11.1, -64.5, -199.3, 999, 6, 0},
            {"widowmaker_soldier", 0, -29.2, -65, -181.7, 999, 6, 0},
            {"widowmaker_hunter_low", 0, -69.7, -69, -176.7, 999, 8, 0},
            {"widowmaker_soldier", 0, -84, -69.6, -201.1, 999, 8, 0},
            {"widowmaker_hunter_low", 0, -120.8, -69.7, -188.6, 999, 8, 0},
            {"widowmaker_soldier", 0, -121.3, -70.3, -146.6, 999, 8, 0},
            {"widowmaker_hunter_low", 0, -88.8, -69.8, -130, 999, 8, 0},
            {"widowmaker_webber_low", 0, -97.6, -70.1, -103.7, 999, 8, 0},
            {"widowmaker_soldier", 220, -48.5, -69.1, -109.4, 999, 9, 0},
            {"widowmaker_soldier", 220, -49.3, -69.5, -85.2, 999, 9, 0},
            {"widowmaker_soldier", 220, -32.5, -70.4, -90.2, 999, 9, 0},
            {"widowmaker_soldier", 240, -29.8, -70, -108.9, 999, 9, 0},
            {"widowmaker_hunter_low", 0, -29.1, -80, -149, 999, 10, 0},
            {"widowmaker_webber_low", 0, -42.1, -83.4, -146.8, 999, 10, 0},
            {"widowmaker_webber_low", 0, -57.7, -92.1, -144.6, 999, 10, 0},
            {"widowmaker_soldier", 0, -85.9, -99.5, -90, 999, 11, 0},
            {"widowmaker_soldier_low", 240, -101.6, -100.3, -120.8, 999, 11, 0},
            {"widowmaker_soldier_low", 120, -79.6, -100.7, -115.3, 999, 11, 0},
            {"widowmaker_soldier", 240, -101, -100.0, -100.9, 999, 11, 0},
    },
}
registerScreenPlay("worldevent_widowmaker", true)

local ObjectManager = require("managers.object.object_manager")
local ScreenplayHelper = require("helper.screenplayHelper")
local CombatHelper = require("helper.combatHelper")

function worldevent_widowmaker:start()
    self:spawnTerminals()
    writeData("worldevent_widowmaker:EventIsRunning", 0)
end

function worldevent_widowmaker:startInstance()
    if  (readData("worldevent_widowmaker:EventIsRunning") == 1) then
        return 0
    end
    writeData("worldevent_widowmaker:Playercount", getConnectionCount())
    writeData("worldevent_widowmaker:EventIsRunning", 1)
    local pCreature = self:spawnInstance()
    self:spawnMobiles()
    self:spawnEndBoss()
    createEvent(7200 * 1000, "worldevent_widowmaker", "dungeonDestroyTimer", pCreature)
    createEvent(3600 * 1000, "worldevent_widowmaker", "TimerInfo", pCreature)
    createEvent(5400 * 1000, "worldevent_widowmaker", "TimerInfo2", pCreature)

    local msg = " \\#AAFF2F[Worldevent Widowmaker:] Jar Jur Bonx from Naboose Deeja Peak here. \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    msg = " \\#AAFF2F[Worldevent Widowmaker:] Hello ? Forces ? Mese neede helpa ! HELP !\\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    msg = " \\#FF8C00[Worldeventinfo Widowmaker:] Cave will colapse in 2h \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    return 0
end

function worldevent_widowmaker:TimerInfo(pBoss, pPlayer)
    if  (readData("worldevent_widowmaker:EventIsRunning") == 0) then
        return 1
    end
    local msg = " \\#FF8C00[Worldeventinfo Widowmaker:] Cave will colapse in 1h \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    return 0
end

function worldevent_widowmaker:TimerInfo2(pBoss, pPlayer)
	if  (readData("worldevent_widowmaker:EventIsRunning") == 0) then
        return 1
    end
    local msg = " \\#FF8C00[Worldeventinfo Widowmaker:] Cave will colapse in 30min \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    return 0
end

function worldevent_widowmaker:dungeonDestroyTimer(pBoss, pPlayer)
    self:removeAllPlayersAndDestoyMobiles(0)
    printf("Info: DeSpawn Widow Worldevent \n")
    return 1
end

function worldevent_widowmaker:spawnInstance()
    local pCreature = spawnMobile("naboo", "cll8_binary_load_lifter", 60, 4729, 9999, -1366, 290, 0)
    ObjectManager.withCreatureObject(pCreature, function(mobile)
        writeData("worldevent_widowmaker:AnchorID", mobile:getObjectID())
    end)
    local pBuilding = spawnBuilding(pCreature,"object/building/general/cave_01.iff", 4800, -1335, 300, 332)
    ObjectManager.withSceneObject(pBuilding, function(scene)
        writeData("worldevent_widowmaker:DungeonID", scene:getObjectID())
    end)

    local sceneCellObject = LuaSceneObject(pBuilding)
    local building = LuaBuildingObject(pBuilding)
    for i = 1, 11, 1 do
        sceneCellObject:_setObject(building:getCell(i))
        writeData("worldevent_widowmaker:cell" .. i, sceneCellObject:getObjectID())
    end
    return pCreature
end

function worldevent_widowmaker:spawnMobiles()
    local count = 0
    local connections = readData("worldevent_widowmaker:Playercount")
    if connections > 50 then
        for i,v in ipairs(self.spawnMap) do
            self:spawnCreatures(v,count)
            count = count + 1
        end
    else
         for i,v in ipairs(self.spawnMapLow) do
            self:spawnCreatures(v,count)
            count = count + 1
        end   
    end
    
end

function worldevent_widowmaker:spawnCreatures(v,count)
    local pCreature
    local cellID = 0
    local rotate = 0

    if v[6] == 999 then
        rotate = math.random(360)
    else
        rotate = v[6]
    end

    if v[7] > 0 then
        cellID = readData("worldevent_widowmaker:cell" .. v[7])
    end

    if v[8] == 0 then
        pCreature = spawnMobile(self.planetName, v[1], v[2], v[3], v[4], v[5], rotate, cellID )
    else
        pCreature = ScreenplayHelper:spawnMobileAndIdle(self.planetName, v[1], v[2], v[3], v[4], v[5], rotate, cellID )
    end

    ObjectManager.withCreatureObject(pCreature, function(mobile)
        writeData("worldevent_widowmaker:CreatureID_" .. count, mobile:getObjectID())
    end)
end

function worldevent_widowmaker:despawnCreature(pMobile, pPlayer)
    ObjectManager.withCreatureObject(pMobile, function(mobile)
        CombatHelper:forcePeace(pMobile)
        ScreenplayHelper:despawnCreature(pMobile)
    end)
    return 0
end

function worldevent_widowmaker:spawnEndBoss()
    local pBoss 
    local connections = readData("worldevent_widowmaker:Playercount")
    if connections > 50 then
    	pBoss= spawnMobile("naboo", "widowmaker", 0, -91.8, -100.9, -101.2, 0, readData("worldevent_widowmaker:cell11"))
    else
    	pBoss= spawnMobile("naboo", "widowmaker_low", 0, -91.8, -100.9, -101.2, 0, readData("worldevent_widowmaker:cell11"))
    end
    if pBoss ~= nil then
        createObserver(OBJECTDESTRUCTION, self.scriptName, "rewardEndBoss", pBoss)
        createEvent(7197 * 1000, self.scriptName, "despawnCreature", pBoss)
    end
    return 0
end

function worldevent_widowmaker:rewardEndBoss(pBoss, pPlayer)
    local msg = " \\#AAFF20[Worldevent Widowmaker:] WidowMaker died in her Blood. Deeja Peak is save again !. \\#FFFFFF "
    sendBroadCastMessage(msg, "all");
    worldevent_widowmaker:removeAllPlayersAndDestoyMobiles(1)
    return 0
end

function worldevent_widowmaker:despawn(pSceneObject)
    if pSceneObject ~= nil then
        ScreenplayHelper:destroy(LuaSceneObject(pSceneObject):getObjectID(),true)
    end
    return 0
end


-- -----------------------------
-- -- functions cleanuptask   --

function worldevent_widowmaker:removeAllPlayersAndDestoyMobiles(bossWasKilled)
    if readData("worldevent_widowmaker:EventIsRunning") == 0 then
        return 0
    end
    local playersToRemove = {}
    for i = 1, 11, 1 do
        local pCell = getSceneObject(readData("worldevent_widowmaker:cell" .. i))
        ObjectManager.withSceneObject(pCell, function(cell)
            for j = cell:getContainerObjectsSize(), 1, -1 do
                local pObject = cell:getContainerObject(j - 1)
                ObjectManager.withSceneObject(pObject, function(object)
                    if object:isPlayerCreature() then
                        table.insert(playersToRemove, pObject)
                        if bossWasKilled == 1 then
                            ObjectManager.withCreatureObject(pObject, function(player)
                                player:setScreenPlayState(1, "worldevent_bosskill")
                                player:setScreenPlayState(8, "worldevent_bosskill")
                                player:sendSystemMessage("The National Hunting Association has registered your kill.")
                            end)
                            ObjectManager.withCreaturePlayerObject(pObject, function(player)
                                player:awardBadge(140)
                            end)
                        end
                    end
                 end)
                 
             end
        end)
    end

    local count = 0
    local connections = readData("worldevent_widowmaker:Playercount")
    if connections > 50 then
        for i,v in ipairs(self.spawnMap) do
            ScreenplayHelper:destroy(readData("worldevent_widowmaker:CreatureID_" .. count), false)
            count = count + 1
        end
	else
        for i,v in ipairs(self.spawnMapLow) do
            ScreenplayHelper:destroy(readData("worldevent_widowmaker:CreatureID_" .. count), false)
            count = count + 1
        end
	end
	
    for i = 1, #playersToRemove, 1 do
        local pObject = playersToRemove[i]
        createEvent(1000, self.scriptName, "removePlayer", pObject)
    end
    local pObject = getCreatureObject(readData("worldevent_widowmaker:AnchorID")) 
    createEvent(2000, self.scriptName, "destroyDungeon", pObject)
    writeData("worldevent_widowmaker:EventIsRunning", 0)
    return 0
end

function worldevent_widowmaker:destroyDungeon(pPlayer)
    ScreenplayHelper:destroy(readData("worldevent_widowmaker:AnchorID"), false)
    ScreenplayHelper:destroy(readData("worldevent_widowmaker:DungeonID"), false) 
    return 0
end

function worldevent_widowmaker:removePlayer(pPlayer)
    if pPlayer == nil then
        return 0
    end
    local player = LuaSceneObject(pPlayer)
    if (player ~= nil) then
        player:switchZone(self.planetName, 4909, 360, -1424, 0)
    end
    return 0
end

--------------- temp Admin trigger till we have more players for a random observer ---------------
function worldevent_widowmaker:spawnTerminals()

    -- bosspower
    local pSceneObject = spawnSceneObject("naboo", "object/tangible/dungeon/terminal_free_s1.iff", 4985, 360, -1578, 0, 180)
    ObjectManager.withSceneObject(pSceneObject, function(scene)
        scene:setCustomObjectName("disabled Terminal")
    end)
    createObserver(OBJECTRADIALUSED, "worldevent_widowmaker", "notifyTerminalUsed", pSceneObject)
end

function worldevent_widowmaker:notifyTerminalUsed(pKeypad, pPlayer, radialSelected)
    if (radialSelected == 20) then
    local suiManager = LuaSuiManager()
        suiManager:sendKeypadSui(pKeypad, pPlayer, "worldevent_widowmaker", "keypadSuiCallback")
    end
    return 0
end

function worldevent_widowmaker:keypadSuiCallback(pCreature, pSui, cancelPressed, enteredCode, pressedButton)
    local suiBox = LuaSuiBox(pSui)
    local pUsingObject = suiBox:getUsingObject()
    ObjectManager.withCreatureObject(pCreature, function(player)
        if (pressedButton == "enter") then
            if (tonumber(enteredCode) == 14686001) then
                player:sendSystemMessage("Starting WorldEvent Widowmaker")
                self:startInstance()
           end
           if (tonumber(enteredCode) == 14686002) then
                player:sendSystemMessage("count:" .. getConnectionCount())
              
           end
           
        end
    end)
    return 0
end
 