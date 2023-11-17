

local RED_GROUND_TEMPLATES = {

    [1] = 
    {
        ["visible"] = false,
        ["lateActivation"] = true,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 1375,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = -83792.551594545,
                    ["x"] = -287208.72719806,
                    ["ETA_locked"] = true,
                    ["speed"] = 0,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                                [1] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 1,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 0,
                                                ["value"] = 0,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [1]
                                [2] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 2,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 9,
                                                ["value"] = 2,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [2]
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
            ["routeRelativeTOT"] = true,
        }, -- end of ["route"]
        ["groupId"] = 12,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SNR_75V",
                ["unitId"] = 57,
                ["y"] = -83792.551594545,
                ["x"] = -287208.72719806,
                ["name"] = "SA2_ZEUS",
                ["heading"] = 0.0038885041518015,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S_75M_Volhov",
                ["unitId"] = 58,
                ["y"] = -83839.648291942,
                ["x"] = -287129.62813629,
                ["name"] = "SA2_ZEUS-2",
                ["heading"] = 5.4803338512622,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S_75M_Volhov",
                ["unitId"] = 59,
                ["y"] = -83685.751062058,
                ["x"] = -287208.50899119,
                ["name"] = "SA2_ZEUS-3",
                ["heading"] = 1.535889741755,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S_75M_Volhov",
                ["unitId"] = 60,
                ["y"] = -83890.795820337,
                ["x"] = -287210.55489233,
                ["name"] = "SA2_ZEUS-4",
                ["heading"] = 4.6774823953448,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S_75M_Volhov",
                ["unitId"] = 61,
                ["y"] = -83852.676460892,
                ["x"] = -287287.02149667,
                ["name"] = "SA2_ZEUS-5",
                ["heading"] = 3.8048177693476,
                ["playerCanDrive"] = false,
            }, -- end of [5]
            [6] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S_75M_Volhov",
                ["unitId"] = 62,
                ["y"] = -83734.625366969,
                ["x"] = -287296.48274003,
                ["name"] = "SA2_ZEUS-6",
                ["heading"] = 2.3561944901923,
                ["playerCanDrive"] = false,
            }, -- end of [6]
            [7] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S_75M_Volhov",
                ["unitId"] = 63,
                ["y"] = -83738.262524544,
                ["x"] = -287128.03687985,
                ["name"] = "SA2_ZEUS-7",
                ["heading"] = 0.92502450355699,
                ["playerCanDrive"] = false,
            }, -- end of [7]
            [8] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZIL-131 KUNG",
                ["unitId"] = 64,
                ["y"] = -83747.915429443,
                ["x"] = -287178.77052596,
                ["name"] = "SA2_ZEUS-8",
                ["heading"] = 4.1713369122664,
                ["playerCanDrive"] = false,
            }, -- end of [8]
            [9] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZIL-131 KUNG",
                ["unitId"] = 65,
                ["y"] = -83737.324247313,
                ["x"] = -287194.01877447,
                ["name"] = "SA2_ZEUS-9",
                ["heading"] = 4.1713369122664,
                ["playerCanDrive"] = false,
            }, -- end of [9]
            [10] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "p-19 s-125 sr",
                ["unitId"] = 66,
                ["y"] = -83780.581327405,
                ["x"] = -287256.92177844,
                ["name"] = "SA2_ZEUS-10",
                ["heading"] = 2.2165681500328,
                ["playerCanDrive"] = false,
            }, -- end of [10]
            [11] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320 APA-5D",
                ["unitId"] = 67,
                ["y"] = -83749.039706505,
                ["x"] = -287235.47347623,
                ["name"] = "SA2_ZEUS-11",
                ["heading"] = 0.68067840827779,
                ["playerCanDrive"] = false,
            }, -- end of [11]
            [12] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATMZ-5",
                ["unitId"] = 68,
                ["y"] = -83829.78625601,
                ["x"] = -287223.75801703,
                ["name"] = "SA2_ZEUS-12",
                ["heading"] = 0.87266462599716,
                ["playerCanDrive"] = false,
            }, -- end of [12]
            [13] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATMZ-5",
                ["unitId"] = 69,
                ["y"] = -83801.027913513,
                ["x"] = -287251.49093554,
                ["name"] = "SA2_ZEUS-13",
                ["heading"] = 1.0297442586767,
                ["playerCanDrive"] = false,
            }, -- end of [13]
            [14] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320T",
                ["unitId"] = 70,
                ["y"] = -83782.203467909,
                ["x"] = -287168.78547775,
                ["name"] = "SA2_ZEUS-14",
                ["heading"] = 5.4279739737024,
                ["playerCanDrive"] = false,
            }, -- end of [14]
            [15] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320T",
                ["unitId"] = 71,
                ["y"] = -83820.053412989,
                ["x"] = -287184.10569362,
                ["name"] = "SA2_ZEUS-15",
                ["heading"] = 5.3407075111026,
                ["playerCanDrive"] = false,
            }, -- end of [15]
        }, -- end of ["units"]
        ["y"] = -83792.551594545,
        ["x"] = -287208.72719806,
        ["name"] = "SA2_ZEUS",
        ["start_time"] = 0,
    }, -- end of sa2
    [2] = 
    {
        ["visible"] = false,
        ["lateActivation"] = true,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 1371,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = -83640.330018349,
                    ["x"] = -286491.02740369,
                    ["ETA_locked"] = true,
                    ["speed"] = 0,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                                [1] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 1,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 0,
                                                ["value"] = 0,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [1]
                                [2] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 2,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 9,
                                                ["value"] = 2,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [2]
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
            ["routeRelativeTOT"] = true,
        }, -- end of ["route"]
        ["groupId"] = 13,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "snr s-125 tr",
                ["unitId"] = 72,
                ["y"] = -83640.330018349,
                ["x"] = -286491.02740369,
                ["name"] = "SA3_ZEUS",
                ["heading"] = 6.2641478001644,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "5p73 s-125 ln",
                ["unitId"] = 73,
                ["y"] = -83619.918653861,
                ["x"] = -286545.42294817,
                ["name"] = "T90-2-2",
                ["heading"] = 3.1590459461097,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "5p73 s-125 ln",
                ["unitId"] = 74,
                ["y"] = -83655.445654951,
                ["x"] = -286546.67895326,
                ["name"] = "T90-2-3",
                ["heading"] = 3.1590459461097,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "5p73 s-125 ln",
                ["unitId"] = 75,
                ["y"] = -83601.796294719,
                ["x"] = -286517.43197761,
                ["name"] = "T90-2-4",
                ["heading"] = 3.1590459461097,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "5p73 s-125 ln",
                ["unitId"] = 76,
                ["y"] = -83676.438882868,
                ["x"] = -286519.4056999,
                ["name"] = "SA3",
                ["heading"] = 3.1590459461097,
                ["playerCanDrive"] = false,
            }, -- end of [5]
            [6] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "p-19 s-125 sr",
                ["unitId"] = 77,
                ["y"] = -83713.616131102,
                ["x"] = -286457.2737837,
                ["name"] = "T90-2-6",
                ["heading"] = 6.2641478001644,
                ["playerCanDrive"] = false,
            }, -- end of [6]
            [7] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZIL-131 KUNG",
                ["unitId"] = 78,
                ["y"] = -83623.91234239,
                ["x"] = -286491.22459384,
                ["name"] = "T90-2-7",
                ["heading"] = 1.5707963267949,
                ["playerCanDrive"] = false,
            }, -- end of [7]
            [8] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZiL-131 APA-80",
                ["unitId"] = 79,
                ["y"] = -83626.635701021,
                ["x"] = -286484.34721413,
                ["name"] = "T90-2-8",
                ["heading"] = 3.1241393610699,
                ["playerCanDrive"] = false,
            }, -- end of [8]
            [9] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "GAZ-66",
                ["unitId"] = 80,
                ["y"] = -83616.152131304,
                ["x"] = -286417.87930657,
                ["name"] = "T90-2-9",
                ["heading"] = 1.6057029118348,
                ["playerCanDrive"] = false,
            }, -- end of [9]
            [10] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "GAZ-66",
                ["unitId"] = 81,
                ["y"] = -83616.109274139,
                ["x"] = -286423.60450024,
                ["name"] = "T90-2-10",
                ["heading"] = 1.6406094968747,
                ["playerCanDrive"] = false,
            }, -- end of [10]
            [11] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "GAZ-66",
                ["unitId"] = 82,
                ["y"] = -83615.803066178,
                ["x"] = -286428.29968899,
                ["name"] = "T90-2-11",
                ["heading"] = 1.5707963267949,
                ["playerCanDrive"] = false,
            }, -- end of [11]
            [12] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZiL-131 APA-80",
                ["unitId"] = 83,
                ["y"] = -83706.832469937,
                ["x"] = -286451.22434138,
                ["name"] = "T90-2-12",
                ["heading"] = 1.6406094968747,
                ["playerCanDrive"] = false,
            }, -- end of [12]
        }, -- end of ["units"]
        ["y"] = -83640.330018349,
        ["x"] = -286491.02740369,
        ["name"] = "SA3_ZEUS",
        ["start_time"] = 0,
    }, -- end of sa3
    [3] = 
    {
        ["visible"] = false,
        ["lateActivation"] = true,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 1366,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = -84491.494232141,
                    ["x"] = -286661.75510937,
                    ["ETA_locked"] = true,
                    ["speed"] = 5.5555555555556,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                                [1] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 1,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 0,
                                                ["value"] = 0,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [1]
                                [2] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 2,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 9,
                                                ["value"] = 2,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [2]
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
            ["routeRelativeTOT"] = true,
        }, -- end of ["route"]
        ["groupId"] = 14,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Kub 1S91 str",
                ["unitId"] = 84,
                ["y"] = -84491.494232141,
                ["x"] = -286661.75510937,
                ["name"] = "SA6",
                ["heading"] = 0,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Kub 2P25 ln",
                ["unitId"] = 85,
                ["y"] = -84390.616682216,
                ["x"] = -286659.09875432,
                ["name"] = "T90-3-2",
                ["heading"] = 4.7123889803847,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Kub 2P25 ln",
                ["unitId"] = 86,
                ["y"] = -84593.746973568,
                ["x"] = -286665.74568794,
                ["name"] = "SA6_ZEUS",
                ["heading"] = 1.553343034275,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Kub 2P25 ln",
                ["unitId"] = 87,
                ["y"] = -84486.598403653,
                ["x"] = -286767.57671096,
                ["name"] = "T90-3-4",
                ["heading"] = 0.034906585039887,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Kub 2P25 ln",
                ["unitId"] = 88,
                ["y"] = -84494.840601339,
                ["x"] = -286562.58527819,
                ["name"] = "T90-3-5",
                ["heading"] = 3.1415926535898,
                ["playerCanDrive"] = false,
            }, -- end of [5]
            [6] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-10",
                ["unitId"] = 89,
                ["y"] = -84596.063296995,
                ["x"] = -286532.11280984,
                ["name"] = "T90-3-6",
                ["heading"] = 2.3212879051525,
                ["playerCanDrive"] = false,
            }, -- end of [6]
            [7] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-10",
                ["unitId"] = 90,
                ["y"] = -84603.494834656,
                ["x"] = -286541.31376123,
                ["name"] = "T90-3-7",
                ["heading"] = 2.4958208303519,
                ["playerCanDrive"] = false,
            }, -- end of [7]
            [8] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZiL-131 APA-80",
                ["unitId"] = 91,
                ["y"] = -84471.474598224,
                ["x"] = -286636.14911251,
                ["name"] = "T90-3-8",
                ["heading"] = 1.5882496193148,
                ["playerCanDrive"] = false,
            }, -- end of [8]
            [9] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320-31",
                ["unitId"] = 92,
                ["y"] = -84511.511301408,
                ["x"] = -286619.58261791,
                ["name"] = "T90-3-9",
                ["heading"] = 0.05235987755983,
                ["playerCanDrive"] = false,
            }, -- end of [9]
            [10] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320-31",
                ["unitId"] = 93,
                ["y"] = -84520.312969108,
                ["x"] = -286619.58261791,
                ["name"] = "T90-3-10",
                ["heading"] = 0.034906585039887,
                ["playerCanDrive"] = false,
            }, -- end of [10]
            [11] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-375 PBU",
                ["unitId"] = 94,
                ["y"] = -84471.380353153,
                ["x"] = -286639.71680385,
                ["name"] = "T90-3-11",
                ["heading"] = 1.5882496193148,
                ["playerCanDrive"] = false,
            }, -- end of [11]
        }, -- end of ["units"]
        ["y"] = -84491.494232141,
        ["x"] = -286661.75510937,
        ["name"] = "SA6_ZEUS",
        ["start_time"] = 0,
    }, -- end of SA6
    [4] = 
    {
        ["visible"] = false,
        ["lateActivation"] = true,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 1373,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = -84442.007940641,
                    ["x"] = -287953.3473175,
                    ["ETA_locked"] = true,
                    ["speed"] = 0,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                                [1] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 1,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 0,
                                                ["value"] = 0,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [1]
                                [2] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 2,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 9,
                                                ["value"] = 2,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [2]
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
            ["routeRelativeTOT"] = true,
        }, -- end of ["route"]
        ["groupId"] = 15,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 40B6M tr",
                ["unitId"] = 95,
                ["y"] = -84442.007940641,
                ["x"] = -287953.3473175,
                ["name"] = "SA10_ZEUS",
                ["heading"] = 4.7123889803847,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 40B6MD sr",
                ["unitId"] = 96,
                ["y"] = -84314.032226361,
                ["x"] = -287952.65417465,
                ["name"] = "T90-4-2",
                ["heading"] = 0,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 54K6 cp",
                ["unitId"] = 97,
                ["y"] = -84195.453265395,
                ["x"] = -287929.76808251,
                ["name"] = "T90-4-3",
                ["heading"] = 3.1415926535898,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 64H6E sr",
                ["unitId"] = 98,
                ["y"] = -84195.453265395,
                ["x"] = -287975.86334532,
                ["name"] = "T90-4-4",
                ["heading"] = 3.1415926535898,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 5P85C ln",
                ["unitId"] = 99,
                ["y"] = -84443.388627341,
                ["x"] = -287869.99733422,
                ["name"] = "T90-4-5",
                ["heading"] = 3.1415926535898,
                ["playerCanDrive"] = false,
            }, -- end of [5]
            [6] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 5P85D ln",
                ["unitId"] = 100,
                ["y"] = -84425.903293143,
                ["x"] = -287870.84867693,
                ["name"] = "T90-4-6",
                ["heading"] = 3.3161255787892,
                ["playerCanDrive"] = false,
            }, -- end of [6]
            [7] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 5P85D ln",
                ["unitId"] = 101,
                ["y"] = -84460.235217131,
                ["x"] = -287870.79970129,
                ["name"] = "T90-4-7",
                ["heading"] = 2.9670597283904,
                ["playerCanDrive"] = false,
            }, -- end of [7]
            [8] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 5P85C ln",
                ["unitId"] = 102,
                ["y"] = -84442.423566936,
                ["x"] = -288035.98772383,
                ["name"] = "T90-4-8",
                ["heading"] = 0,
                ["playerCanDrive"] = false,
            }, -- end of [8]
            [9] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 5P85D ln",
                ["unitId"] = 103,
                ["y"] = -84424.892307907,
                ["x"] = -288035.28700247,
                ["name"] = "T90-4-9",
                ["heading"] = 6.1086523819802,
                ["playerCanDrive"] = false,
            }, -- end of [9]
            [10] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "S-300PS 5P85D ln",
                ["unitId"] = 104,
                ["y"] = -84460.002484334,
                ["x"] = -288035.28700247,
                ["name"] = "T90-4-10",
                ["heading"] = 0.17453292519943,
                ["playerCanDrive"] = false,
            }, -- end of [10]
            [11] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "generator_5i57",
                ["unitId"] = 105,
                ["y"] = -84254.33080555,
                ["x"] = -287962.43319519,
                ["name"] = "T90-4-11",
                ["heading"] = 1.5707963267949,
                ["playerCanDrive"] = false,
            }, -- end of [11]
            [12] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "generator_5i57",
                ["unitId"] = 106,
                ["y"] = -84254.489827717,
                ["x"] = -287952.50971527,
                ["name"] = "T90-4-12",
                ["heading"] = 1.5707963267949,
                ["playerCanDrive"] = false,
            }, -- end of [12]
            [13] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-5",
                ["unitId"] = 107,
                ["y"] = -84273.373255761,
                ["x"] = -288013.17113648,
                ["name"] = "T90-4-13",
                ["heading"] = 0,
                ["playerCanDrive"] = true,
            }, -- end of [13]
            [14] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-5",
                ["unitId"] = 108,
                ["y"] = -84262.742506258,
                ["x"] = -288013.17113648,
                ["name"] = "T90-4-14",
                ["heading"] = 0,
                ["playerCanDrive"] = true,
            }, -- end of [14]
            [15] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "GAZ-66",
                ["unitId"] = 109,
                ["y"] = -84504.819367858,
                ["x"] = -287932.39963817,
                ["name"] = "T90-4-15",
                ["heading"] = 1.5707963267949,
                ["playerCanDrive"] = false,
            }, -- end of [15]
            [16] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-60_Maz",
                ["unitId"] = 110,
                ["y"] = -84290.652019736,
                ["x"] = -287886.59596179,
                ["name"] = "T90-4-16",
                ["heading"] = 3.9269908169872,
                ["playerCanDrive"] = true,
            }, -- end of [16]
            [17] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-60_Maz",
                ["unitId"] = 111,
                ["y"] = -84283.539933209,
                ["x"] = -287893.70804832,
                ["name"] = "T90-4-17",
                ["heading"] = 3.9269908169872,
                ["playerCanDrive"] = true,
            }, -- end of [17]
            [18] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "KAMAZ Truck",
                ["unitId"] = 112,
                ["y"] = -84504.480815305,
                ["x"] = -287969.67454512,
                ["name"] = "T90-4-18",
                ["heading"] = 1.5707963267949,
                ["playerCanDrive"] = false,
            }, -- end of [18]
        }, -- end of ["units"]
        ["y"] = -84442.007940641,
        ["x"] = -287953.3473175,
        ["name"] = "SA10_ZEUS",
        ["start_time"] = 0,
    }, -- end of sa10
    [5] = 
    {
        ["visible"] = false,
        ["lateActivation"] = true,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 1364,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = -84837.898272637,
                    ["x"] = -287220.95020331,
                    ["ETA_locked"] = true,
                    ["speed"] = 5.5555555555556,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                                [1] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 1,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 0,
                                                ["value"] = 0,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [1]
                                [2] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 2,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 9,
                                                ["value"] = 2,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [2]
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
            ["routeRelativeTOT"] = true,
        }, -- end of ["route"]
        ["groupId"] = 16,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SA-11 Buk SR 9S18M1",
                ["unitId"] = 113,
                ["y"] = -84837.898272637,
                ["x"] = -287220.95020331,
                ["name"] = "T90-5-1",
                ["heading"] = 0,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SA-11 Buk LN 9A310M1",
                ["unitId"] = 114,
                ["y"] = -84737.020722712,
                ["x"] = -287218.29384826,
                ["name"] = "T90-5-2",
                ["heading"] = 4.7123889803847,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SA-11 Buk LN 9A310M1",
                ["unitId"] = 115,
                ["y"] = -84940.151014064,
                ["x"] = -287224.94078188,
                ["name"] = "T90-5-3",
                ["heading"] = 1.553343034275,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SA-11 Buk LN 9A310M1",
                ["unitId"] = 116,
                ["y"] = -84833.002444149,
                ["x"] = -287326.7718049,
                ["name"] = "T90-5-4",
                ["heading"] = 0.034906585039887,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SA-11 Buk LN 9A310M1",
                ["unitId"] = 117,
                ["y"] = -84841.244641835,
                ["x"] = -287121.78037213,
                ["name"] = "T90-5-5",
                ["heading"] = 3.1415926535898,
                ["playerCanDrive"] = false,
            }, -- end of [5]
            [6] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-10",
                ["unitId"] = 118,
                ["y"] = -84942.467337491,
                ["x"] = -287091.30790378,
                ["name"] = "T90-5-6",
                ["heading"] = 2.3212879051525,
                ["playerCanDrive"] = false,
            }, -- end of [6]
            [7] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ATZ-10",
                ["unitId"] = 119,
                ["y"] = -84949.898875152,
                ["x"] = -287100.50885517,
                ["name"] = "T90-5-7",
                ["heading"] = 2.4958208303519,
                ["playerCanDrive"] = false,
            }, -- end of [7]
            [8] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "ZiL-131 APA-80",
                ["unitId"] = 120,
                ["y"] = -84816.473174853,
                ["x"] = -287193.31358083,
                ["name"] = "T90-5-8",
                ["heading"] = 1.5882496193148,
                ["playerCanDrive"] = false,
            }, -- end of [8]
            [9] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320-31",
                ["unitId"] = 121,
                ["y"] = -84857.915341904,
                ["x"] = -287178.77771185,
                ["name"] = "SA11_ZEUS",
                ["heading"] = 0.05235987755983,
                ["playerCanDrive"] = false,
            }, -- end of [9]
            [10] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-4320-31",
                ["unitId"] = 122,
                ["y"] = -84866.717009604,
                ["x"] = -287178.77771185,
                ["name"] = "T90-5-10",
                ["heading"] = 0.034906585039887,
                ["playerCanDrive"] = false,
            }, -- end of [10]
            [11] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "Ural-375 PBU",
                ["unitId"] = 123,
                ["y"] = -84816.473174853,
                ["x"] = -287198.346984,
                ["name"] = "T90-5-11",
                ["heading"] = 1.5882496193148,
                ["playerCanDrive"] = false,
            }, -- end of [11]
            [12] = 
            {
                ["skill"] = "High",
                ["coldAtStart"] = false,
                ["type"] = "SA-11 Buk CC 9S470M1",
                ["unitId"] = 124,
                ["y"] = -84855.565939468,
                ["x"] = -287234.92304703,
                ["name"] = "SA11",
                ["heading"] = 1.553343034275,
                ["playerCanDrive"] = false,
            }, -- end of [12]
        }, -- end of ["units"]
        ["y"] = -84837.898272637,
        ["x"] = -287220.95020331,
        ["name"] = "SA11_ZEUS",
        ["start_time"] = 0,
    }, -- end of sa11
    [6] = 
    {
        ["visible"] = false,
        ["lateActivation"] = true,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["task"] = "Pas de sol",
        ["taskSelected"] = true,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 1381,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = -83706.300007276,
                    ["x"] = -287877.48385957,
                    ["ETA_locked"] = true,
                    ["speed"] = 0,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                                [1] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 1,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 0,
                                                ["value"] = 0,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [1]
                                [2] = 
                                {
                                    ["enabled"] = true,
                                    ["auto"] = false,
                                    ["id"] = "WrappedAction",
                                    ["number"] = 2,
                                    ["params"] = 
                                    {
                                        ["action"] = 
                                        {
                                            ["id"] = "Option",
                                            ["params"] = 
                                            {
                                                ["name"] = 9,
                                                ["value"] = 2,
                                            }, -- end of ["params"]
                                        }, -- end of ["action"]
                                    }, -- end of ["params"]
                                }, -- end of [2]
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
            ["routeRelativeTOT"] = true,
        }, -- end of ["route"]
        ["groupId"] = 17,
        ["hidden"] = false,
        ["units"] = 
                                {
                                    [1] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 212,
                                        ["y"] = -54662.906263604,
                                        ["x"] = -322973.180732,
                                        ["name"] = "Ground-3-3",
                                        ["heading"] = 0.069813170079773,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [1]
                                    [2] = 
                                    {
                                        ["skill"] = "Excellent",
                                        ["coldAtStart"] = false,
                                        ["type"] = "Ural-375",
                                        ["unitId"] = 221,
                                        ["y"] = -54627.006093702,
                                        ["x"] = -323036.53499956,
                                        ["name"] = "Ground-3-11",
                                        ["heading"] = 0,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [2]
                                    [3] = 
                                    {
                                        ["skill"] = "Excellent",
                                        ["coldAtStart"] = false,
                                        ["type"] = "Ural-375",
                                        ["unitId"] = 222,
                                        ["y"] = -54647.359280615,
                                        ["x"] = -322985.65203228,
                                        ["name"] = "Ground-3-12",
                                        ["heading"] = 0,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [3]
                                    [4] = 
                                    {
                                        ["skill"] = "Excellent",
                                        ["coldAtStart"] = false,
                                        ["type"] = "Ural-375",
                                        ["unitId"] = 220,
                                        ["y"] = -54691.154977454,
                                        ["x"] = -323014.90973847,
                                        ["name"] = "Ground-3-10",
                                        ["heading"] = 0,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [4]
                                    [5] = 
                                    {
                                        ["skill"] = "Excellent",
                                        ["coldAtStart"] = false,
                                        ["type"] = "RPC_5N62V",
                                        ["unitId"] = 217,
                                        ["y"] = -54637.396343155,
                                        ["x"] = -323003.09360721,
                                        ["name"] = "Ground-3-8",
                                        ["heading"] = 0,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [5]
                                    [6] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 218,
                                        ["y"] = -54607.857831735,
                                        ["x"] = -322987.44118928,
                                        ["name"] = "Ground-3-9",
                                        ["heading"] = 0.85521133347722,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [6]
                                    [7] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 216,
                                        ["y"] = -54596.651382193,
                                        ["x"] = -323015.981085,
                                        ["name"] = "Ground-3-7",
                                        ["heading"] = 1.6580627893946,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [7]
                                    [8] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 215,
                                        ["y"] = -54611.767655204,
                                        ["x"] = -323056.18799069,
                                        ["name"] = "Ground-3-6",
                                        ["heading"] = 2.9845130209103,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [8]
                                    [9] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 214,
                                        ["y"] = -54674.419873621,
                                        ["x"] = -323059.61017961,
                                        ["name"] = "Ground-3-5",
                                        ["heading"] = 3.1241393610699,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [9]
                                    [10] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 213,
                                        ["y"] = -54706.115755895,
                                        ["x"] = -322989.25866358,
                                        ["name"] = "Ground-3-4",
                                        ["heading"] = 5.9690260418206,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [10]
                                    [11] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "S-200_Launcher",
                                        ["unitId"] = 211,
                                        ["y"] = -54711.987355013,
                                        ["x"] = -323034.28724869,
                                        ["name"] = "Ground-3-2",
                                        ["heading"] = 3.9793506945471,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [11]
                                    [12] = 
                                    {
                                        ["skill"] = "High",
                                        ["coldAtStart"] = false,
                                        ["type"] = "RLS_19J6",
                                        ["unitId"] = 209,
                                        ["y"] = -54661.876195614,
                                        ["x"] = -323019.70365476,
                                        ["name"] = "Ground-3-1",
                                        ["heading"] = 0,
                                        ["playerCanDrive"] = false,
                                    }, -- end of [12]
                                }, -- end of ["units"]
        ["y"] = -83706.300007276,
        ["x"] = -287877.48385957,
        ["name"] = "SA5_ZEUS",
        ["start_time"] = 0,
    }, -- end of SA5
}



for i, Template in pairs(RED_GROUND_TEMPLATES) do 
	GROUP:NewTemplate(Template, coalition.side.RED, Group.Category.GROUND, country.id.RUSSIA)        
end