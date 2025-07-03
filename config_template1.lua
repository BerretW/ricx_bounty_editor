Config.Quests = {
    [5] = {
        blip = {
            enable = true,
            sprite = -2034972265
        },
        coords = vector3(-331.636932, -356.015808, 88.033089),
        heading = 26.35,
        job = nil,
        name = "Plameňák Joe",
        other_quest_requirement = nil,
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("cs_obediahhinton"),
            preset = 0
        },
        quests = {
            [1] = {
                desc = "Čauko šéfko, mám pre teba robotu. Potreboval by som aby si zajebal zopár bobrov pri starej lodenici v zátoke. Serú ma, lebo mi tam obhryzkávajú lode. Lebo staré porekadlo vravi, zajeb bobra zachrániš strom. Odmena ťa nemine.",
                guards = {
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 50,
                        name = "Bobor",
                        ped = {
                            model = GetHashKey("a_c_beaver_01"),
                            preset = 0
                        },
                        pos = vector3(337.342621, -662.379700, 41.804287),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 50,
                        name = "Bobor",
                        ped = {
                            model = GetHashKey("a_c_beaver_01"),
                            preset = 0
                        },
                        pos = vector3(330.418427, -655.749817, 41.572044),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 50,
                        name = "Bobor",
                        ped = {
                            model = GetHashKey("a_c_beaver_01"),
                            preset = 0
                        },
                        pos = vector3(342.094299, -656.691101, 41.854195),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 50,
                        name = "Bobor",
                        ped = {
                            model = GetHashKey("a_c_beaver_01"),
                            preset = 0
                        },
                        pos = vector3(357.914825, -659.636169, 42.094402),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 50,
                        name = "Bobor",
                        ped = {
                            model = GetHashKey("a_c_beaver_01"),
                            preset = 0
                        },
                        pos = vector3(364.182068, -666.929810, 42.568832),
                        weapon = nil
                    }
                },
                name = "Zabi bobra zachraniš loď",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(329.644470, -586.906616, 53.412998),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = nil,
                    heading = 320.834,
                    health = 500,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_002.png",
                    model = GetHashKey("mp_a_c_beaver_01"),
                    name = "Černý Bobor",
                    pos = {
                        vector3(352.866364, -669.300964, 42.024067)
                    },
                    preset = 2,
                    weapon = nil
                }
            },
            [2] = {
                desc = "No to me podrž, ty ses vrátil? Uznávám že můj popis nebyl posledně úplně nejslepší, ale tentokrát to bude jiný. Váš jak si posledně našel ty bobry? Tak jejich místo nahradila rodinka krys, a to se nenech mejlit, jsou to neuvěřitelný svině a sežerou na co přijdou. Postarej se o ně, a já ti dám odměnu.",
                guards = {
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 30,
                        name = "Iny",
                        ped = {
                            model = GetHashKey("a_c_muskrat_01"),
                            preset = 1
                        },
                        pos = vector3(119.191460, -750.622314, 42.209526),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 30,
                        name = "Mini",
                        ped = {
                            model = GetHashKey("a_c_muskrat_01"),
                            preset = 1
                        },
                        pos = vector3(122.866310, -754.031006, 42.027843),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 30,
                        name = "Mainy",
                        ped = {
                            model = GetHashKey("a_c_muskrat_01"),
                            preset = 1
                        },
                        pos = vector3(126.198845, -746.740479, 41.837585),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 30,
                        name = "Muu",
                        ped = {
                            model = GetHashKey("a_c_muskrat_01"),
                            preset = 1
                        },
                        pos = vector3(129.814316, -754.191040, 41.754498),
                        weapon = nil
                    }
                },
                name = "Kousavý svině",
                reward = {
                    {
                        amount = 20,
                        id = "money"
                    }
                },
                start_pos = vector3(148.558731, -737.219543, 41.703743),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = nil,
                    heading = 320.834,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_c_muskrat_01"),
                    name = "Myšák",
                    pos = {
                        vector3(116.832008, -754.729919, 42.225475)
                    },
                    preset = 1,
                    weapon = nil
                }
            },
            [3] = {
                desc = "Dobrej, dobrej. Mám takovou prosbičku, pokud by sis chtěl u staráho Joa šplhnout, měl pro tebe takovej šolích. Na severovýchod od tud, je taková volezlá bouda s hromadou kostí uvnitř. Zajdi tam a přiveď mi nějaký vlčí maso, víš co tím myslím? Samozřejmě to nechci zadarmo.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 100,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1444.371094, 841.562622, 101.245888),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 100,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1457.843628, 835.565674, 101.412857),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 100,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1455.873779, 825.756226, 100.614746),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 100,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1467.720825, 822.857849, 101.119347),
                        weapon = GetHashKey("weapon_wolf")
                    }
                },
                name = "Trocha vlčího masa",
                reward = {
                    {
                        amount = 20,
                        id = "money"
                    }
                },
                start_pos = vector3(1474.993286, 712.726013, 95.606346),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = nil,
                    heading = 320.834,
                    health = 500,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_a_c_wolf_01"),
                    name = "Nasratej Vlk",
                    pos = {
                        vector3(1493.648193, 816.702637, 100.632484),
                        vector3(1452.941284, 849.005920, 102.867210)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_wolf")
                }
            },
            [4] = {
                desc = "Dobrej, dobrej. Mám takovou prosbičku, pokud by sis chtěl u staráho Joa šplhnout, měl pro tebe takovej šolích. Na severovýchod od tud, je taková volezlá bouda s hromadou kostí uvnitř. Zajdi tam a přiveď mi nějaký vlčí maso, víš co tím myslím? Samozřejmě to nechci zadarmo.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_BEAR"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 200,
                        name = "Pů",
                        ped = {
                            model = GetHashKey("a_c_bearblack_01"),
                            preset = 1
                        },
                        pos = vector3(-1989.465332, -5.152581, 304.097534),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_BEAR"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 200,
                        name = "Pů2",
                        ped = {
                            model = GetHashKey("a_c_bearblack_01"),
                            preset = 1
                        },
                        pos = vector3(-1950.974487, -10.313111, 305.776947),
                        weapon = GetHashKey("weapon_wolf")
                    }
                },
                name = "Medved",
                reward = {
                    {
                        amount = 50,
                        id = "money"
                    }
                },
                start_pos = vector3(-1918.889038, -43.369740, 293.868256),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = nil,
                    heading = 320.834,
                    health = 500,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_c_bear_01"),
                    name = "Nasratej MEdvěd",
                    pos = {
                        vector3(-1958.332397, 17.993032, 301.931335)
                    },
                    preset = 3,
                    weapon = GetHashKey("weapon_bear")
                }
            },
            [5] = {
                desc = "Dobrej, dobrej. Mám takovou prosbičku, pokud by sis chtěl u staráho Joa šplhnout, měl pro tebe takovej šolích. Na severovýchod od tud, je taková volezlá bouda s hromadou kostí uvnitř. Zajdi tam a přiveď mi nějaký vlčí maso, víš co tím myslím? Samozřejmě to nechci zadarmo.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_ANIMAL"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 60,
                        name = "Alvin",
                        ped = {
                            model = GetHashKey("a_c_possum_01"),
                            preset = 0
                        },
                        pos = vector3(2340.628418, -1355.680664, 45.607754),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ANIMAL"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 60,
                        name = "Simon",
                        ped = {
                            model = GetHashKey("a_c_possum_01"),
                            preset = 0
                        },
                        pos = vector3(2335.107422, -1353.354126, 45.347874),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ANIMAL"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 60,
                        name = "Pumba",
                        ped = {
                            model = GetHashKey("a_c_possum_01"),
                            preset = 0
                        },
                        pos = vector3(2337.715088, -1347.534424, 44.643871),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ANIMAL"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 60,
                        name = "Teodor",
                        ped = {
                            model = GetHashKey("a_c_possum_01"),
                            preset = 0
                        },
                        pos = vector3(2334.691406, -1340.198120, 44.159412),
                        weapon = GetHashKey("weapon_wolf")
                    }
                },
                name = "Devačicace skládky",
                reward = {
                    {
                        amount = 20,
                        id = "money"
                    }
                },
                start_pos = vector3(2338.805908, -1373.035522, 45.637650),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = nil,
                    heading = 320.834,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_c_possum_01"),
                    name = "Vačičák",
                    pos = {
                        vector3(2325.002441, -1340.347046, 43.886040)
                    },
                    preset = 1,
                    weapon = GetHashKey("weapon_wolf")
                }
            },
            [6] = {
                desc = "Dobrej, dobrej. Mám takovou prosbičku, pokud by sis chtěl u staráho Joa šplhnout, měl pro tebe takovej šolích. Na severovýchod od tud, je taková volezlá bouda s hromadou kostí uvnitř. Zajdi tam a přiveď mi nějaký vlčí maso, víš co tím myslím? Samozřejmě to nechci zadarmo.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 300,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1444.371094, 841.562622, 101.245888),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 300,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1457.843628, 835.565674, 101.412857),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 300,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1455.873779, 825.756226, 100.614746),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 300,
                        name = "Vlček",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 1
                        },
                        pos = vector3(1467.720825, 822.857849, 101.119347),
                        weapon = GetHashKey("weapon_wolf")
                    }
                },
                name = "Trocha vlčího masa",
                reward = {
                    {
                        amount = 20,
                        id = "money"
                    }
                },
                start_pos = vector3(1474.993286, 712.726013, 95.606346),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = nil,
                    heading = 320.834,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_a_c_wolf_01"),
                    name = "Nasratej Vlk",
                    pos = {
                        vector3(1493.648193, 816.702637, 100.632484),
                        vector3(1452.941284, 849.005920, 102.867210)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_wolf")
                }
            }
        },
        reset_progress = {
            enable = true,
            price = 5
        },
        shop = nil
    },
    [6] = {
        blip = {
            color = 0,
            enable = true,
            scale = 1.0,
            sprite = -2034972265,
            text = "Truhlík Bill"
        },
        coords = vector3(-1840.459717, -423.259766, 161.661697),
        heading = 173.0,
        job = nil,
        name = "Truhlík Bill",
        other_quest_requirement = false,
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("cs_nbxexecuted"),
            preset = 0,
            scenario = ""
        },
        quests = {
            [1] = {
                desc = "Nazdar na pláních u Levandule se potloká škodná, můžeš to jít vyříédit? Docela tam kazí pobyt",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Nová Stráž",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 0
                        },
                        pos = vector3(-2216.888428, 541.179871, 117.918541),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 0.0,
                        health = 100,
                        name = "Nová Stráž",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 5
                        },
                        pos = vector3(-2214.803223, 544.619141, 117.984245),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Nová Stráž",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 2
                        },
                        pos = vector3(-2214.803223, 544.619141, 117.984245),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 0.0,
                        health = 100,
                        name = "Nová Stráž",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 0
                        },
                        pos = vector3(-2208.988281, 542.793518, 118.001106),
                        weapon = GetHashKey("weapon_wolf")
                    }
                },
                name = "Zlikviduj škodnou",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                spawn_distance = 20.0,
                start_pos = vector3(-2267.728027, 541.061157, 119.603279),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 100,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_c_wolf"),
                    name = "Vlček",
                    pos = vector3(-2216.888428, 541.179871, 117.918541),
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_cattleman")
                }
            },
            [2] = {
                desc = "Díky za likvidaci tej havětě, teď se tam ale potlouká něco jinýho. Zjisti co to je a zabij to!",
                guards = {
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 150.0,
                        name = "Iny",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 0
                        },
                        pos = vector3(-2107.273193, 677.485229, 121.547813),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 150.0,
                        name = "Mini",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 1
                        },
                        pos = vector3(-2107.273193, 677.485229, 121.547813),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "defensive",
                        heading = 359.384,
                        health = 160.0,
                        name = "Mainy",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 0
                        },
                        pos = vector3(-2107.273193, 677.485229, 121.547813),
                        weapon = nil
                    },
                    {
                        animal_brawl = nil,
                        blip = false,
                        combat = "offensive",
                        heading = 359.384,
                        health = 200.0,
                        name = "Muu",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 1
                        },
                        pos = vector3(-2107.273193, 677.485229, 121.547813),
                        weapon = nil
                    }
                },
                name = "Jsou tam další",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                spawn_distance = 20.0,
                start_pos = vector3(-2183.935791, 698.757324, 121.760315),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 300.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_a_c_wolf_01"),
                    name = "Co to kurva",
                    pos = vector3(-2107.273193, 677.485229, 121.547813),
                    preset = 1,
                    weapon = GetHashKey("WEAPON_ANIMAL")
                }
            }
        },
        random_coords = {

        },
        reset_progress = {
            enable = false,
            price = 500
        },
        shop = {
            completed_quest_requirement = 0,
            items = {

            }
        }
    }
}