Config.Quests = {
    [1] = {
        blip = {
            enable = true,
            sprite = -2034972265
        },
        heading = 108.91,
        job = {
            "bounty_hunter"
        },
        name = "Krvavej Jimmy",
        other_quest_requirement = false,
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("cs_nbxexecuted"),
            preset = 0
        },
        quests = {
            [1] = {
                desc = "Sejmi Cartera, ten hajzl se určitě schovává v nějakým zaplivaným sklepě poblíž Valentinu.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_DOG"),
                        blip = true,
                        combat = "offensive",
                        heading = 184.896,
                        health = 100,
                        name = "Carter's Dog",
                        ped = {
                            model = GetHashKey("a_c_doghound_01"),
                            preset = 5
                        },
                        pos = vector3(-609.102, 537.837, 96.097),
                        weapon = GetHashKey("WEAPON_ANIMAL")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 184.896,
                        health = 100,
                        name = "Carter's Foe",
                        ped = {
                            model = GetHashKey("a_m_m_unicorpse_01"),
                            preset = 4
                        },
                        pos = vector3(-617.283, 532.150, 97.654),
                        weapon = GetHashKey("weapon_thrown_poisonbottle")
                    },
                    {
                        animal_brawl = GetHashKey("BS_DOG"),
                        blip = true,
                        combat = "offensive",
                        heading = 184.896,
                        health = 100,
                        name = "Carter's Dog",
                        ped = {
                            model = GetHashKey("a_c_doghound_01"),
                            preset = 1
                        },
                        pos = vector3(-604.457, 528.984, 96.972),
                        weapon = GetHashKey("WEAPON_ANIMAL")
                    }
                },
                name = "1. Quest",
                reward = {
                    {
                        amount = 50,
                        id = "money"
                    }
                },
                spawn_distance = 60.0,
                start_pos = vector3(-594.2, 511.84, 95.54),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = false,
                    heading = 264.65,
                    health = 100,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_unicorpse_01"),
                    name = "Carter",
                    pos = vector3(-614.01, 527.65, 94.62),
                    preset = 5,
                    weapon = GetHashKey("weapon_melee_machete")
                }
            },
            [2] = {
                desc = "Mám tu pro tebe další štěk, najdi ho a zabij! Ale dej si pozor, ten prevít si nejspíš nasbíral partičku kámošů! Jméno je Frank Bowner",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 209.0,
                        health = 120,
                        name = "Gang Member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 10
                        },
                        pos = vector3(-1869.9, 1357.58, 203.76),
                        weapon = GetHashKey("weapon_repeater_carbine")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 220.0,
                        health = 120,
                        name = "Gang Member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 9
                        },
                        pos = vector3(-1881.4, 1358.33, 202.39),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 220.0,
                        health = 120,
                        name = "Gang Member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 12
                        },
                        pos = vector3(-1899.57, 1338.66, 200.69),
                        weapon = GetHashKey("weapon_thrown_poisonbottle")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 220.0,
                        health = 120,
                        name = "Gang Member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 17
                        },
                        pos = vector3(-1903.7, 1326.57, 199.57),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 282.0,
                        health = 120,
                        name = "Gang Member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 24
                        },
                        pos = vector3(-1886.94, 1331.18, 200.26),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    },
                    {
                        animal_brawl = GetHashKey("BS_DOG"),
                        blip = true,
                        combat = "offensive",
                        heading = 160.896,
                        health = 100,
                        name = "Gang Dog",
                        ped = {
                            model = GetHashKey("a_c_doghound_01"),
                            preset = 5
                        },
                        pos = vector3(-1899.334, 1340.665, 199.741),
                        weapon = GetHashKey("WEAPON_ANIMAL")
                    }
                },
                name = "2. Quest",
                reward = {
                    {
                        amount = 70,
                        id = "money"
                    }
                },
                start_pos = vector3(-1838.73, 1310.44, 220.8),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 200.0,
                    health = 120,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("u_m_m_bht_odriscollsleeping"),
                    name = "Frank Bowner",
                    pos = vector3(-1879.45, 1330.31, 202.25),
                    preset = 0,
                    weapon = GetHashKey("weapon_shotgun_pump")
                }
            },
            [3] = {
                desc = "Vim že už je to ohraný, ale tenhle hajzl je fakt nebezpečnej!Jmenuje se Berry Green a je to šéf bandy, která se mě odtud snaží vyštípat!",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 44.18,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 2
                        },
                        pos = vector3(-314.445312, 177.239471, 64.359108),
                        weapon = GetHashKey("weapon_shotgun_repeating")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 17.13,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 3
                        },
                        pos = vector3(-310.686981, 168.112839, 64.477425),
                        weapon = GetHashKey("weapon_shotgun_repeating")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 70.25,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 5
                        },
                        pos = vector3(-325.522766, 169.193771, 64.293556),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 248.84,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 6
                        },
                        pos = vector3(-316.412567, 181.827347, 64.192177),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 299.63,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 7
                        },
                        pos = vector3(-277.063629, 200.195847, 65.266502),
                        weapon = GetHashKey("weapon_pistol_m1899")
                    }
                },
                name = "3. Quest",
                reward = {
                    {
                        amount = 70,
                        id = "money"
                    }
                },
                start_pos = vector3(-324.243103, 187.642105, 63.735332),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 36.25,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("cs_brynntildon"),
                    name = "Berry Green",
                    pos = vector3(-330.922028, 178.287811, 64.024811),
                    preset = 0,
                    weapon = GetHashKey("weapon_pistol_m1899")
                }
            },
            [4] = {
                desc = "Todle cápka prostě vodkrouhni, už mě docela dlouho sere. Obsadil takový ty zákopy u Rhodes, nebude to prdel, ale já tí věřim!",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 202.51,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 7
                        },
                        pos = vector3(1601.391113, -1842.852417, 52.362431),
                        weapon = GetHashKey("weapon_shotgun_sawedoff")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 249.75,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 0
                        },
                        pos = vector3(1573.475952, -1850.272339, 52.001503),
                        weapon = GetHashKey("weapon_melee_hatchet")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 80.99,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 2
                        },
                        pos = vector3(1528.022949, -1826.471680, 50.708637),
                        weapon = GetHashKey("weapon_melee_machete")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 207.74,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 6
                        },
                        pos = vector3(1526.747192, -1813.730103, 52.928116),
                        weapon = GetHashKey("weapon_melee_machete")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 249.75,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 0
                        },
                        pos = vector3(1504.456787, -1799.432373, 55.036007),
                        weapon = GetHashKey("weapon_melee_hatchet")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 80.99,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 2
                        },
                        pos = vector3(1484.570068, -1814.702393, 54.447239),
                        weapon = GetHashKey("weapon_melee_machete")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 207.74,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("a_m_m_bivworker_01"),
                            preset = 6
                        },
                        pos = vector3(1522.575195, -1796.737915, 54.232845),
                        weapon = GetHashKey("weapon_melee_machete")
                    }
                },
                name = "4. Quest",
                reward = {
                    {
                        amount = 130,
                        id = "money"
                    }
                },
                start_pos = vector3(1513.419434, -1796.803101, 54.559105),
                target = {
                    areablip = {
                        radius = 100.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 260.72,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_bivworker_01"),
                    name = "Cápek",
                    pos = vector3(1586.869019, -1845.459473, 52.431850),
                    preset = 23,
                    weapon = GetHashKey("weapon_rifle_boltaction")
                }
            },
            [5] = {
                desc = "Dycky dyž vlezu do salounu tak tam srmdí jako kopa sraček, vodkrágluj ho.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 224.62,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 20
                        },
                        pos = vector3(1244.73, 1148.58, 150.5),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 18.53,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 10
                        },
                        pos = vector3(1257.82, 1144.59, 149.46),
                        weapon = GetHashKey("weapon_shotgun_semiauto")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 293.75,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 11
                        },
                        pos = vector3(1251.73, 1151.221, 150.74),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 26.38,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 14
                        },
                        pos = vector3(1246.16, 1141.7, 149.84),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    }
                },
                name = "5. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1233.8, 1197.33, 149.11),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 183.33,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("g_m_m_unimicahgoons_01"),
                    name = "Másloň",
                    pos = vector3(1241.48, 1148.46, 150.21),
                    preset = 10,
                    weapon = GetHashKey("weapon_rifle_boltaction")
                }
            },
            [6] = {
                desc = "Simtě mám tu dalšího nepřítele státu. Podváděl při pokru a to se nedělá. Elegantně se ho zbav.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 247.12,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimicahgoons_01"),
                            preset = 29
                        },
                        pos = vector3(1190.237671, 2045.142090, 324.535187),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    }
                },
                name = "6. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1199.167358, 2022.533203, 321.188110),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 344.5,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("g_m_m_unimicahgoons_01"),
                    name = "Mlíčňák",
                    pos = vector3(1195.031250, 2045.865356, 324.442474),
                    preset = 28,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [7] = {
                desc = "Two Dogs Fucking. To méno fakt nevymyslíš. Říkaj, že má dva ksichty a oba z nich chtěj tvou krev. Sejmi ho, než tě sejme on… nebo než tě taky pojmenuje.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 171.5,
                        health = 200,
                        name = "Falling Flower",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 8
                        },
                        pos = vector3(1536.783936, 1612.013672, 146.114716),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 44.07,
                        health = 200,
                        name = "Clouds on sky",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 1
                        },
                        pos = vector3(1515.339478, 1628.175659, 148.675583),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 218.27,
                        health = 200,
                        name = "Cihlenka",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 2
                        },
                        pos = vector3(1539.371826, 1670.802368, 141.417130),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 307.59,
                        health = 200,
                        name = "Agáve",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 3
                        },
                        pos = vector3(1538.881348, 1696.058350, 150.011414),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 184.9,
                        health = 200,
                        name = "Indagua Iše",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 4
                        },
                        pos = vector3(1567.355347, 1693.818970, 145.837021),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 132.36,
                        health = 200,
                        name = "Winetou",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 5
                        },
                        pos = vector3(1589.540283, 1681.391724, 143.085800),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 180.89,
                        health = 200,
                        name = "Čehýla",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 6
                        },
                        pos = vector3(1633.223633, 1651.115723, 155.762878),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 291.28,
                        health = 200,
                        name = "Salamiasa",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 7
                        },
                        pos = vector3(1631.582764, 1630.786621, 151.474350),
                        weapon = GetHashKey("weapon_repeater_henry")
                    }
                },
                name = "7. Quest",
                reward = {
                    {
                        amount = 230,
                        id = "money"
                    }
                },
                start_pos = vector3(1565.553711, 1589.663940, 147.417068),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 181.78,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_wapwarriors_01"),
                    name = "Two Dogs Fucking",
                    pos = vector3(1519.509155, 1647.364746, 142.974899),
                    preset = 15,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [8] = {
                desc = "Generál Ambrose K. Laughton dezertoval z armády před třema rokama. Od tý doby si hraje na svého vlastního císaře v kopcích za Rio Bravo – obklopenej skupinou věrnejch fanatiků, co mu říkaj 'Otec Války'.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 169.4,
                        health = 200,
                        name = "Lieutenant Horatio Bellweather",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 1
                        },
                        pos = vector3(2570.993652, 808.901917, 78.557938),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 147.41,
                        health = 200,
                        name = "Sergeant Cole Whistler Dugan ",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 8
                        },
                        pos = vector3(2578.519775, 784.127197, 83.832634),
                        weapon = GetHashKey("weapon_rifle_springfield")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 174.81,
                        health = 200,
                        name = "Corporal Jasper Flint ",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 7
                        },
                        pos = vector3(2570.264648, 779.343506, 81.571938),
                        weapon = GetHashKey("weapon_rifle_springfield")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 302.99,
                        health = 200,
                        name = "Private Jonah Six Toes Merritt",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 6
                        },
                        pos = vector3(2552.482178, 770.752930, 77.390175),
                        weapon = GetHashKey("weapon_rifle_springfield")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 260.97,
                        health = 200,
                        name = "Chaplain Obadiah Cross ",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 5
                        },
                        pos = vector3(2529.568359, 784.994690, 75.172081),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 193.28,
                        health = 200,
                        name = "Scout Lyle",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 4
                        },
                        pos = vector3(2522.409912, 804.265808, 74.799477),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 302.84,
                        health = 200,
                        name = "Quartermaster Felix Grubb",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 3
                        },
                        pos = vector3(2502.262695, 818.410339, 75.063217),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 234.91,
                        health = 200,
                        name = "Captain Silas Grinder Boone",
                        ped = {
                            model = GetHashKey("s_m_m_army_01"),
                            preset = 2
                        },
                        pos = vector3(2523.894043, 847.385925, 80.152443),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    }
                },
                name = "8. Quest",
                reward = {
                    {
                        amount = 130,
                        id = "money"
                    }
                },
                start_pos = vector3(2432.837158, 840.773743, 72.197403),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 154.77,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("s_m_m_army_01"),
                    name = "Generál K. Laughton ",
                    pos = vector3(2590.278809, 831.536499, 83.989349),
                    preset = 50,
                    weapon = GetHashKey("weapon_rifle_boltaction")
                }
            },
            [9] = {
                desc = "Elmer Brute tvrdí, že neumírá. Pověsili jsme ho. Utekl. Zkus mu tentokrát ustřelit hlavu, ať máme jistotu.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 357.4,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("MP_FM_BOUNTYTARGET_MALES_DLC008_01"),
                            preset = 1
                        },
                        pos = vector3(-748.61, -417.32, 41.69),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 209.6,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("MP_FM_BOUNTYTARGET_MALES_DLC008_01"),
                            preset = 4
                        },
                        pos = vector3(-749.59, -399.21, 41.61),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 156.72,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("MP_FM_BOUNTYTARGET_MALES_DLC008_01"),
                            preset = 3
                        },
                        pos = vector3(-751.71, -406.82, 41.76),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 3.57,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("MP_FM_BOUNTYTARGET_MALES_DLC008_01"),
                            preset = 2
                        },
                        pos = vector3(-733.48, -407.03, 41.63),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    }
                },
                name = "9. Quest",
                reward = {
                    {
                        amount = 70,
                        id = "money"
                    }
                },
                start_pos = vector3(-755.04, -361.49, 40.84),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 13.97,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("g_m_m_unimicahgoons_01"),
                    name = "Elmer Brut",
                    pos = vector3(-736.0, -438.54, 41.77),
                    preset = 28,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [10] = {
                desc = "Říkaj si Los Hijos del Fuego. Vypalujou ranče, kradou ženy, a zpívaj při tom modlitby – pošli jim vlastní amen.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 105.64,
                        health = 200,
                        name = "Mexican Bandit",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 165
                        },
                        pos = vector3(343.59, 140.16, 125.31),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 85.07,
                        health = 200,
                        name = "Mexican Bandit",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 162
                        },
                        pos = vector3(315.61, 150.01, 114.36),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 152.92,
                        health = 200,
                        name = "Mexican Bandit",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 163
                        },
                        pos = vector3(304.46, 135.67, 111.49),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 136.26,
                        health = 200,
                        name = "Mexican Bandit",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 164
                        },
                        pos = vector3(334.64, 150.99, 126.23),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    }
                },
                name = "10. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(277.62, 147.17, 101.07),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 106.31,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("MP_LBM_CARMELA_BANDITOS_01"),
                    name = "El Pedro",
                    pos = vector3(345.55, 144.78, 123.51),
                    preset = 1,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [11] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 36.93,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 69
                        },
                        pos = vector3(403.22, -1197.54, 44.77),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 325.7,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 62
                        },
                        pos = vector3(347.84, -1251.49, 44.61),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 334.41,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 63
                        },
                        pos = vector3(324.78, -1248.15, 42.67),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 321.33,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 64
                        },
                        pos = vector3(337.8, -1264.69, 42.96),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 340.56,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 65
                        },
                        pos = vector3(354.96, -1294.04, 43.31),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 346.5,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 66
                        },
                        pos = vector3(380.52, -1272.3, 41.9),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 14.67,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 67
                        },
                        pos = vector3(438.68, -1248.47, 45.09),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 34.69,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 68
                        },
                        pos = vector3(427.55, -1206.8, 44.91),
                        weapon = GetHashKey("weapon_bow")
                    }
                },
                name = "11. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(386.69, -1162.66, 41.59),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 18.79,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_wapwarriors_01"),
                    name = "Red Moon",
                    pos = vector3(396.45, -1267.12, 41.91),
                    preset = 16,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [12] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 229.21,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 30
                        },
                        pos = vector3(703.8, -1160.63, 48.79),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 197.08,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 31
                        },
                        pos = vector3(699.76, -1127.45, 51.19),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 154.64,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 32
                        },
                        pos = vector3(726.32, -1121.64, 57.54),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 142.47,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 33
                        },
                        pos = vector3(749.6, -1131.33, 56.39),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 204.32,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 35
                        },
                        pos = vector3(672.65, -1098.91, 51.92),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    }
                },
                name = "12. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(702.87, -1185.53, 46.86),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 166.0,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_animalpoacher_01"),
                    name = "The Leader",
                    pos = vector3(720.96, -1087.3, 56.89),
                    preset = 1,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [13] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 96.654,
                        health = 200,
                        name = "Cultist",
                        ped = {
                            model = GetHashKey("RE_RALLYDISPUTE_MALES_01"),
                            preset = 0
                        },
                        pos = vector3(1791.7747802734, -413.251, 45.769),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 155.432,
                        health = 200,
                        name = "Cultist",
                        ped = {
                            model = GetHashKey("RE_RALLYDISPUTE_MALES_01"),
                            preset = 0
                        },
                        pos = vector3(1752.0024414062, -413.591, 48.048),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 95.323,
                        health = 200,
                        name = "Cultist",
                        ped = {
                            model = GetHashKey("RE_RALLYDISPUTE_MALES_01"),
                            preset = 0
                        },
                        pos = vector3(1772.9777832031, -399.45, 47.291),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 70.104,
                        health = 200,
                        name = "Cultist",
                        ped = {
                            model = GetHashKey("RE_RALLYDISPUTE_MALES_01"),
                            preset = 0
                        },
                        pos = vector3(1782.4006347656, -408.969, 46.86),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    }
                },
                name = "13. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1700.408, -405.293, 49.011),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 63.637,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("RE_RALLYDISPUTE_MALES_01"),
                    name = "The Cultist Boss",
                    pos = vector3(1792.7940673828, -396.904, 46.116),
                    preset = 0,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [14] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 127.821,
                        health = 200,
                        name = "Hillbilly",
                        ped = {
                            model = GetHashKey("a_m_m_btchillbilly_01"),
                            preset = 0
                        },
                        pos = vector3(2536.474, 763.161, 75.0411),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 126.195,
                        health = 200,
                        name = "Hillbilly",
                        ped = {
                            model = GetHashKey("a_m_m_btchillbilly_01"),
                            preset = 0
                        },
                        pos = vector3(2528.837, 749.99, 75.011),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 120.778,
                        health = 200,
                        name = "Hillbilly",
                        ped = {
                            model = GetHashKey("a_m_m_btchillbilly_01"),
                            preset = 0
                        },
                        pos = vector3(2548.52, 780.407, 75.48),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 117.395,
                        health = 200,
                        name = "Hillbilly",
                        ped = {
                            model = GetHashKey("a_m_m_btchillbilly_01"),
                            preset = 6
                        },
                        pos = vector3(2556.87, 794.679, 76.169),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 156.0281,
                        health = 200,
                        name = "Hillbilly",
                        ped = {
                            model = GetHashKey("a_m_m_btchillbilly_01"),
                            preset = 7
                        },
                        pos = vector3(2544.943, 814.254, 75.803),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 135.22,
                        health = 200,
                        name = "Hillbilly",
                        ped = {
                            model = GetHashKey("a_m_m_btchillbilly_01"),
                            preset = 8
                        },
                        pos = vector3(2556.664, 824.187, 76.2937),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    }
                },
                name = "14. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(2496.861, 733.851, 74.03),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 153.134,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_btchillbilly_01"),
                    name = "The Infection",
                    pos = vector3(2544.739, 820.974, 75.645),
                    preset = 39,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [15] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 286.752,
                        health = 200,
                        name = "Soldier",
                        ped = {
                            model = GetHashKey("s_m_y_army_01"),
                            preset = 10
                        },
                        pos = vector3(2444.258, 291.186, 70.347),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 319.73,
                        health = 200,
                        name = "Soldier",
                        ped = {
                            model = GetHashKey("s_m_y_army_01"),
                            preset = 10
                        },
                        pos = vector3(2462.983, 278.173, 75.432),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 243.958,
                        health = 200,
                        name = "Soldier",
                        ped = {
                            model = GetHashKey("s_m_y_army_01"),
                            preset = 10
                        },
                        pos = vector3(2442.02, 278.361, 76.565),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 6.893,
                        health = 200,
                        name = "Soldier",
                        ped = {
                            model = GetHashKey("s_m_y_army_01"),
                            preset = 10
                        },
                        pos = vector3(2464.619, 293.387, 74.732),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 342.579,
                        health = 200,
                        name = "Soldier",
                        ped = {
                            model = GetHashKey("s_m_y_army_01"),
                            preset = 10
                        },
                        pos = vector3(2456.61, 274.099, 71.0831),
                        weapon = GetHashKey("weapon_repeater_henry")
                    }
                },
                name = "15. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(2460.86, 309.429, 71.498),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 7.4958,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("s_m_y_army_01"),
                    name = "The General",
                    pos = vector3(2446.108, 288.838, 67.333),
                    preset = 0,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [16] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 321.0,
                        health = 200,
                        name = "Worker",
                        ped = {
                            model = GetHashKey("a_m_m_vhtboatcrew_01"),
                            preset = 0
                        },
                        pos = vector3(1850.077, -1251.51, 43.212),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 4.354,
                        health = 200,
                        name = "Worker",
                        ped = {
                            model = GetHashKey("a_m_m_vhtboatcrew_01"),
                            preset = 1
                        },
                        pos = vector3(1859.762, -1275.018, 43.118),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 351.614,
                        health = 200,
                        name = "Worker",
                        ped = {
                            model = GetHashKey("a_m_m_vhtboatcrew_01"),
                            preset = 2
                        },
                        pos = vector3(1861.756, -1291.68, 42.91),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 317.59,
                        health = 200,
                        name = "Worker",
                        ped = {
                            model = GetHashKey("a_m_m_vhtboatcrew_01"),
                            preset = 3
                        },
                        pos = vector3(1830.588, -1293.36, 42.641),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 355.875,
                        health = 200,
                        name = "Worker",
                        ped = {
                            model = GetHashKey("a_m_m_vhtboatcrew_01"),
                            preset = 4
                        },
                        pos = vector3(1828.026, -1282.0, 43.207),
                        weapon = GetHashKey("weapon_repeater_henry")
                    }
                },
                name = "16. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1852.46, -1226.621, 42.429),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 252.062,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("cs_clive"),
                    name = "Mr. Caliga",
                    pos = vector3(1824.0432, -1310.457, 42.855),
                    preset = 0,
                    weapon = GetHashKey("weapon_shotgun_doublebarrel")
                }
            },
            [17] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 79.833,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 7
                        },
                        pos = vector3(2305.0166, -562.396, 41.178),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 66.49,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 0
                        },
                        pos = vector3(2236.661, -553.75, 41.575),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 84.078,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 1
                        },
                        pos = vector3(2247.534, -535.561, 42.181),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 47.071,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 2
                        },
                        pos = vector3(2245.716, -566.301, 40.945),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 92.084,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 3
                        },
                        pos = vector3(2277.002, -537.066, 41.604),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 70.0,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 4
                        },
                        pos = vector3(2285.833, -538.02, 41.06),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 67.5,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 5
                        },
                        pos = vector3(2274.065, -575.223, 41.72),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 25.875,
                        health = 200,
                        name = "Swamp Bandit",
                        ped = {
                            model = GetHashKey("mp_g_m_m_uniswamp_01"),
                            preset = 6
                        },
                        pos = vector3(2267.174, -580.971, 41.08),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    }
                },
                name = "17. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(2205.937, -547.587, 40.22),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 107.82,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_g_m_m_uniswamp_01"),
                    name = "Swamp Monster",
                    pos = vector3(2292.508, -542.266, 41.057),
                    preset = 28,
                    weapon = GetHashKey("weapon_shotgun_doublebarrel")
                }
            },
            [18] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 41.59,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 0
                        },
                        pos = vector3(-1390.436, 1142.898, 219.234),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 310.528,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 1
                        },
                        pos = vector3(-1404.934, 1138.804, 224.667),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 335.126,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 2
                        },
                        pos = vector3(-1403.779, 1129.481, 227.781),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 320.86,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 3
                        },
                        pos = vector3(-1415.426, 1133.497, 225.545),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 225.647,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 4
                        },
                        pos = vector3(-1416.234, 1169.5, 226.501),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 230.293,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 5
                        },
                        pos = vector3(-1423.318, 1171.448, 226.306),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 228.163,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 6
                        },
                        pos = vector3(-1440.85, 1188.158, 226.365),
                        weapon = GetHashKey("weapon_repeater_henry")
                    }
                },
                name = "08. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-1385.295, 1156.934, 224.067),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 156.38163757324,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_legendarybounty_002"),
                    name = "Highlander",
                    pos = vector3(-1443.201, 1205.45, 226.327),
                    preset = 0,
                    weapon = GetHashKey("weapon_rifle_boltaction")
                }
            },
            [19] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 273.568,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 7
                        },
                        pos = vector3(-2370.011, 115.318, 216.721),
                        weapon = GetHashKey("weapon_repeater_carbine")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 99.5,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 8
                        },
                        pos = vector3(-2358.018, 112.766, 216.959),
                        weapon = GetHashKey("weapon_repeater_carbine")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 77.566,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 9
                        },
                        pos = vector3(-2351.097, 112.272, 217.685),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 63.584,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 10
                        },
                        pos = vector3(-2339.712, 105.325, 222.475),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 66.757,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 11
                        },
                        pos = vector3(-2331.277, 101.476, 222.222),
                        weapon = GetHashKey("weapon_shotgun_repeating")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 332.551,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 12
                        },
                        pos = vector3(-2327.231, 89.622, 220.755),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 43.867,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 13
                        },
                        pos = vector3(-2305.513, 75.739, 230.382),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 69.536,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 14
                        },
                        pos = vector3(-2298.435, 81.525, 231.904),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 330.015,
                        health = 200,
                        name = "Mercenary",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 15
                        },
                        pos = vector3(343.828, 62.546, 214.154),
                        weapon = GetHashKey("weapon_repeater_winchester")
                    }
                },
                name = "19. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-2365.778, 122.588, 215.777),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 353.928,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_dyingpoacher_01"),
                    name = "The Leader",
                    pos = vector3(-2320.291, 75.215, 222.666),
                    preset = 0,
                    weapon = GetHashKey("weapon_shotgun_repeating")
                }
            },
            [20] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 183.227,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 16
                        },
                        pos = vector3(-1483.159, -759.253, 104.615),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 212.874,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 17
                        },
                        pos = vector3(-1505.776, -753.089, 105.938),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 196.902,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 18
                        },
                        pos = vector3(-1524.501, -759.396, 110.307),
                        weapon = GetHashKey("weapon_repeater_henry")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 259.52,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 19
                        },
                        pos = vector3(-1531.015, -771.602, 107.825),
                        weapon = GetHashKey("weapon_rifle_boltaction")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 288.0111,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 20
                        },
                        pos = vector3(-1528.397, -791.294, 105.508),
                        weapon = GetHashKey("weapon_rifle_boltaction")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 301.2477,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 21
                        },
                        pos = vector3(-1512.8033, -793.335, 103.001),
                        weapon = GetHashKey("weapon_rifle_boltaction")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 308.22,
                        health = 200,
                        name = "Gang member",
                        ped = {
                            model = GetHashKey("g_m_m_unimountainmen_01"),
                            preset = 22
                        },
                        pos = vector3(-1509.9, -813.904, 105.646),
                        weapon = GetHashKey("weapon_repeater_henry")
                    }
                },
                name = "20. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-1470.556, -770.062, 103.682),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 319.005,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_rhdobesemen_01"),
                    name = "The Money Man",
                    pos = vector3(-1505.455, -833.172, 103.49),
                    preset = 0,
                    weapon = GetHashKey("weapon_shotgun_doublebarrel")
                }
            },
            [21] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 269.4411,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 40
                        },
                        pos = vector3(-1574.743, -924.269, 84.618),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 206.277,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 41
                        },
                        pos = vector3(-1583.013, -923.595, 84.788),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 237.394,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 42
                        },
                        pos = vector3(-1594.305, -921.34, 84.707),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 220.72,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 43
                        },
                        pos = vector3(-1581.711, -894.613, 85.048),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 189.467,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 44
                        },
                        pos = vector3(-1603.11, -908.321, 87.401),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 265.472,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 45
                        },
                        pos = vector3(-1611.159, -890.541, 88.907),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 272.156,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 46
                        },
                        pos = vector3(-1595.573, -872.973, 86.684),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 229.738,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 47
                        },
                        pos = vector3(-1576.145, -872.721, 86.962),
                        weapon = GetHashKey("weapon_bow")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 253.337,
                        health = 200,
                        name = "Indian",
                        ped = {
                            model = GetHashKey("a_m_m_wapwarriors_01"),
                            preset = 48
                        },
                        pos = vector3(-1626.188, -873.901, 89.521),
                        weapon = GetHashKey("weapon_bow")
                    }
                },
                name = "21. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-1529.305, -926.8635, 85.735),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 284.416,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_legendarybounty_004"),
                    name = "Smoking Bear",
                    pos = vector3(-1627.598, -878.606, 89.969),
                    preset = 0,
                    weapon = GetHashKey("weapon_rifle_springfield")
                }
            },
            [22] = {
                desc = "Kill the enemy of Jimmy.",
                guards = {
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 34.497,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-901.119, -931.219, 41.479),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 334.152,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 1
                        },
                        pos = vector3(-937.124, -957.958, 44.554),
                        weapon = GetHashKey("weapon_revolver_doubleaction")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 6.012,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 2
                        },
                        pos = vector3(-922.694, -970.404, 42.877),
                        weapon = GetHashKey("weapon_shotgun_doublebarrel")
                    },
                    {
                        blip = true,
                        combat = "offensive",
                        heading = 354.9585,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 3
                        },
                        pos = vector3(-923.687, -987.534, 44.532),
                        weapon = GetHashKey("weapon_repeater_carbine")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 12.45,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 4
                        },
                        pos = vector3(-892.81, -988.202, 41.707),
                        weapon = GetHashKey("weapon_repeater_carbine")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 23.437,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 5
                        },
                        pos = vector3(-875.755, -977.164, 41.525),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    },
                    {
                        blip = true,
                        combat = "defensive",
                        heading = 49.52,
                        health = 200,
                        name = "Banditos",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 6
                        },
                        pos = vector3(-863.214, -999.479, 42.494),
                        weapon = GetHashKey("weapon_shotgun_pump")
                    }
                },
                name = "22. Quest",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-929.0812, -896.18, 40.866),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = {
                        killer_weapon = GetHashKey("weapon_melee_knife"),
                        reward = {
                            {
                                amount = 100,
                                id = "money"
                            }
                        }
                    },
                    heading = 27.718,
                    health = 250,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("g_m_m_unibanditos_01"),
                    name = "The Mexican Bandit",
                    pos = vector3(-852.894, -1011.677, 43.994),
                    preset = 160,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            }
        },
        random_coords = {
            vector4(-240.49, 774.31, 117.09, 108.91),
            vector4(2917.863, 1348.573, 43.652, 256.949)
        },
        reset_progress = {
            enable = true,
            price = 500
        }
    },
}