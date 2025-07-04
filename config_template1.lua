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
    [2] = {
        blip = {
            enable = true,
            sprite = -2034972265
        },
        coords = vector3(579.397, 1684.041, 186.891),
        heading = 260.91,
        job = {
            "bounty_hunter"
        },
        name = "Rusty Jack",
        other_quest_requirement = {
            quest_npc = 1,
            questid = 2
        },
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("mp_asntrk_grizzlieswest_males_01"),
            preset = 0
        },
        quests = {
            [1] = {
                desc = "A reclusive monk has turned rogue, seeking solitude in the snowy peaks of Grizzlies. Rumors suggest they've taken up residence in a secluded mountain, engaging in forbidden practices.",
                guards = false,
                name = "1. Quest: Zen Seeker",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(1049.168, 1676.410, 376.372),
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
                    heading = 320.834,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("cs_meditatingmonk"),
                    name = "Solitary Monk",
                    pos = {
                        vector3(1091.232, 1733.863, 380.970),
                        vector3(1049.671, 1765.214, 383.619),
                        vector3(1094.128, 1758.815, 376.871)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_melee_knife")
                }
            },
            [2] = {
                desc = "A once-trusted lawman has turned to corruption, using their badge for personal gain. Track them down in the shadowy Caliga Hall.",
                guards = false,
                name = "2. Quest: Tobacco Things",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1890.547, -1305.167, 41.986),
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
                    heading = 143.082,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("cs_mp_policechief_lambert"),
                    name = "Corrupt Sheriff",
                    pos = {
                        vector3(1861.687, -1218.057, 42.491),
                        vector3(1824.791, -1239.373, 42.207),
                        vector3(1826.581, -1274.879, 43.307)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [3] = {
                desc = "A notorious bandit known for quick getaways, spotted near the rocky canyons of Gaptooth Ridge.",
                guards = false,
                name = "3. Quest: Elusive Outlaw",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-6070.462, -3084.405, -0.736),
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
                    heading = 269.082,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_outlaw_arrestedthief_01"),
                    name = "The Outlaw",
                    pos = {
                        vector3(-6024.538, -3141.527, -1.101),
                        vector3(-5987.691, -3165.321, -2.122),
                        vector3(-5995.878, -3133.557, -1.631)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [4] = {
                desc = "A skilled cardsharp who's been cheating at poker games in the bustling saloons of Saint Denis.",
                guards = false,
                name = "4. Quest: Wild West Gambler",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(2810.579, -1127.493, 46.552),
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
                    heading = 200.0,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_cardgameplayers_01"),
                    name = "The Gambler",
                    pos = {
                        vector3(2838.475, -1128.411, 46.341),
                        vector3(2835.208, -1155.125, 46.452),
                        vector3(2798.536, -1153.860, 46.939)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [5] = {
                desc = "A renegade moonshiner causing chaos in the heart of Bayou Nwa. Approach with caution in the dense swamps.",
                guards = false,
                name = "5. Quest: Rogue Moonshiner",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(2423.119, -613.224, 41.567),
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
                    heading = 100.0,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_moonshiners_01"),
                    name = "The Shiner",
                    pos = {
                        vector3(2340.811, -605.843, 41.229),
                        vector3(2387.722, -521.304, 41.161),
                        vector3(2526.768, -512.047, 41.542)
                    },
                    preset = 6,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [6] = {
                desc = "A daring highwayman preying on travelers along the dusty trails of New Austin. Last seen near Armadillo.",
                guards = false,
                name = "6. Quest: Desert Highwayman",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-3373.482, -2742.893, -9.432),
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
                    heading = 100.0,
                    health = 35.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_armtownfolk_01"),
                    name = "The Shiner",
                    pos = {
                        vector3(-3443.638, -2718.640, -4.214),
                        vector3(-3328.935, -2874.113, -6.174),
                        vector3(-3287.830, -2797.955, -3.228)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [7] = {
                desc = "An enigmatic cult leader gathering followers in the eerie hills of Roanoke Ridge. Investigate carefully.",
                guards = false,
                name = "7. Quest: Mysterious Cult Leader",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(2322.848, 1770.098, 109.022),
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
                    heading = 150.0,
                    health = 35.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_cultpriest_01"),
                    name = "The Leader",
                    pos = {
                        vector3(2402.204, 1723.329, 92.609),
                        vector3(2236.009, 1832.148, 139.103),
                        vector3(2415.368, 1896.852, 124.718)
                    },
                    preset = 2,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [8] = {
                desc = "A former Confederate soldier turned outlaw, hiding out in the abandoned forts of West Elizabeth.",
                guards = false,
                name = "8. Quest: Fugitive Confederate",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(-1969.667, -1903.263, 100.006),
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
                    heading = 0.0,
                    health = 35.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("cs_exconfedsleader_01"),
                    name = "The Leader",
                    pos = {
                        vector3(-2035.957, -1936.458, 109.256),
                        vector3(-2066.629, -1925.082, 113.148),
                        vector3(-2074.965, -1891.392, 113.481)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [9] = {
                desc = "A notorious train robber spotted near the railroad tracks in Lemoyne. The law is eager to bring them to justice.",
                guards = false,
                name = "9. Quest: Infamous Train Robber",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1657.855, -864.639, 41.673),
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
                    heading = 140.0,
                    health = 35.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("msp_trainrobbery2_males_01"),
                    name = "The Leader",
                    pos = {
                        vector3(1619.521, -788.517, 41.698),
                        vector3(1646.771, -763.841, 41.969),
                        vector3(1583.808, -846.941, 41.560)
                    },
                    preset = 3,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            },
            [10] = {
                desc = "A bold horse thief making off with prized steeds in the vast plains of The Heartlands. Pursue swiftly.",
                guards = false,
                name = "10. Quest: Reckless Horse Thief",
                reward = {
                    {
                        amount = 30,
                        id = "money"
                    }
                },
                start_pos = vector3(1513.766, 727.496, 102.249),
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
                    heading = 200.0,
                    health = 35.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_outlaw_arrestedthief_01"),
                    name = "The Thief",
                    pos = {
                        vector3(1461.734, 814.147, 100.864),
                        vector3(1439.646, 822.528, 100.208),
                        vector3(1430.320, 731.580, 103.619)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_doubleaction")
                }
            }
        },
        reset_progress = {
            enable = true,
            price = 500
        },
        shop = {
            completed_quest_requirement = 10,
            items = {
                {
                    id = "water",
                    price = 5
                },
                {
                    id = "bread",
                    price = 5
                }
            }
        }
    },
    [3] = {
        blip = {
            enable = true,
            sprite = -2034972265
        },
        coords = vector3(-3739.996, -2621.788, -14.172),
        heading = 97.35,
        job = {
            "bounty_hunter"
        },
        name = "Bob Bronco",
        other_quest_requirement = {
            quest_npc = 2,
            questid = 10
        },
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
                desc = "A mysterious figure haunting the deserts, always accompanied by a pack of cunning coyotes. Sightings near Gaptooth Ridge.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 359.384,
                        health = 300,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 1
                        },
                        pos = vector3(-5566.437, -2586.458, -8.869),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 12.037,
                        health = 100,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 2
                        },
                        pos = vector3(-5561.560, -2582.563, -9.103),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 285.78,
                        health = 100,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 3
                        },
                        pos = vector3(-5560.299, -2587.924, -8.630),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 335.035,
                        health = 100,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 3
                        },
                        pos = vector3(-5570.580, -2576.424, -8.887),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 129.014,
                        health = 100,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 3
                        },
                        pos = vector3(-5583.288, -2577.107, -7.687),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 167.978,
                        health = 100,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 3
                        },
                        pos = vector3(-5592.193, -2588.043, -6.917),
                        weapon = GetHashKey("weapon_coyote")
                    }
                },
                name = "1. Quest: Coyote's Whisper",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(-5533.616, -2472.847, -8.675),
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
                    heading = 320.834,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("re_wildman_01"),
                    name = "Desert Ghost",
                    pos = {
                        vector3(-5620.649, -2568.490, -2.685),
                        vector3(-5577.977, -2588.798, -8.635),
                        vector3(-5608.014, -2640.568, -0.405)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_melee_knife")
                }
            },
            [2] = {
                desc = "A rogue outlaw known for their cunning, armed with a gang of ruthless followers and a loyal alligator. Hideouts rumored in the murky swamps near Lagras.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_ALLIGATOR"),
                        blip = true,
                        combat = "offensive",
                        heading = 359.996,
                        health = 300,
                        name = "Alligator",
                        ped = {
                            model = GetHashKey("a_c_alligator_01"),
                            preset = 0
                        },
                        pos = vector3(2273.939, -546.574, 41.548),
                        weapon = GetHashKey("weapon_alligator")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ALLIGATOR"),
                        blip = true,
                        combat = "offensive",
                        heading = 68.634,
                        health = 300,
                        name = "Alligator",
                        ped = {
                            model = GetHashKey("a_c_alligator_01"),
                            preset = 1
                        },
                        pos = vector3(2222.849, -557.455, 41.012),
                        weapon = GetHashKey("weapon_alligator")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ALLIGATOR"),
                        blip = true,
                        combat = "offensive",
                        heading = 42.6,
                        health = 300,
                        name = "Alligator",
                        ped = {
                            model = GetHashKey("a_c_alligator_01"),
                            preset = 2
                        },
                        pos = vector3(2205.037, -540.118, 41.012),
                        weapon = GetHashKey("weapon_alligator")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ALLIGATOR"),
                        blip = true,
                        combat = "offensive",
                        heading = 94.258,
                        health = 300,
                        name = "Alligator",
                        ped = {
                            model = GetHashKey("a_c_alligator_01"),
                            preset = 0
                        },
                        pos = vector3(2194.624, -527.412, 41.651),
                        weapon = GetHashKey("weapon_alligator")
                    },
                    {
                        animal_brawl = GetHashKey("BS_ALLIGATOR"),
                        blip = true,
                        combat = "offensive",
                        heading = 156.814,
                        health = 300,
                        name = "Alligator",
                        ped = {
                            model = GetHashKey("a_c_alligator_01"),
                            preset = 1
                        },
                        pos = vector3(2183.742, -560.106, 41.492),
                        weapon = GetHashKey("weapon_alligator")
                    }
                },
                name = "2. Quest: The Alligator's Embrace",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(2152.091, -605.838, 41.517),
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
                    heading = 200.834,
                    health = 120.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("g_m_m_uniswamp_01"),
                    name = "Feral Outlaw",
                    pos = {
                        vector3(2246.366, -533.881, 42.159),
                        vector3(2216.890, -523.467, 41.752),
                        vector3(2269.424, -573.478, 41.576)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_melee_knife")
                }
            },
            [3] = {
                desc = "A venomous outlaw skilled in guerrilla tactics, accompanied by a deadly snake. Rumors of their presence in the Bayou Nwa.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_SNAKE"),
                        blip = false,
                        combat = "offensive",
                        heading = 58.27,
                        health = 300,
                        name = "Snake",
                        ped = {
                            model = GetHashKey("a_c_snakeblacktailrattle_01"),
                            preset = 0
                        },
                        pos = vector3(1792.325, -914.573, 41.310),
                        weapon = GetHashKey("weapon_snake")
                    },
                    {
                        animal_brawl = GetHashKey("BS_SNAKE"),
                        blip = false,
                        combat = "offensive",
                        heading = 60.328,
                        health = 300,
                        name = "Snake",
                        ped = {
                            model = GetHashKey("a_c_snakeblacktailrattle_01"),
                            preset = 1
                        },
                        pos = vector3(1774.611, -885.817, 41.891),
                        weapon = GetHashKey("weapon_snake")
                    },
                    {
                        animal_brawl = GetHashKey("BS_SNAKE"),
                        blip = false,
                        combat = "offensive",
                        heading = 29.528,
                        health = 300,
                        name = "Snake",
                        ped = {
                            model = GetHashKey("a_c_snakeredboa_01"),
                            preset = 0
                        },
                        pos = vector3(1768.362, -867.674, 42.563),
                        weapon = GetHashKey("weapon_snake")
                    },
                    {
                        animal_brawl = GetHashKey("BS_SNAKE"),
                        blip = false,
                        combat = "offensive",
                        heading = 277.912,
                        health = 300,
                        name = "Snake",
                        ped = {
                            model = GetHashKey("a_c_snakeredboa_01"),
                            preset = 1
                        },
                        pos = vector3(1785.705, -858.613, 42.110),
                        weapon = GetHashKey("weapon_snake")
                    },
                    {
                        animal_brawl = GetHashKey("BS_SNAKE"),
                        blip = false,
                        combat = "offensive",
                        heading = 229.358,
                        health = 300,
                        name = "Snake",
                        ped = {
                            model = GetHashKey("a_c_snakeredboa_01"),
                            preset = 2
                        },
                        pos = vector3(1806.660, -863.843, 42.147),
                        weapon = GetHashKey("weapon_snake")
                    }
                },
                name = "3. Quest: Snake's Coil",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(1781.736, -825.318, 42.595),
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
                    heading = 100.834,
                    health = 250.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("re_darkalleystabbing_males_01"),
                    name = "Venomous Outlaw",
                    pos = {
                        vector3(1913.528, -878.004, 41.485),
                        vector3(1779.394, -910.343, 40.572),
                        vector3(1813.094, -929.858, 41.549)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_thrown_poisonbottle")
                }
            },
            [4] = {
                desc = "A notorious tracker has been causing mayhem, accompanied by a ferocious bear. Reports place them in the dense forests of Roanoke Ridge.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_BEAR"),
                        blip = true,
                        combat = "offensive",
                        heading = 204.509,
                        health = 300,
                        name = "Teddy",
                        ped = {
                            model = GetHashKey("mp_a_c_bear_01"),
                            preset = 0
                        },
                        pos = vector3(2323.050, 1496.524, 135.149),
                        weapon = GetHashKey("weapon_bear")
                    }
                },
                name = "4. Quest: Bear's Wrath",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(2391.291, 1416.904, 132.632),
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
                    heading = 280.834,
                    health = 250.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("re_beartrap_males_01"),
                    name = "Savage Tracker",
                    pos = {
                        vector3(2269.219, 1445.188, 105.681),
                        vector3(2288.889, 1505.125, 127.926),
                        vector3(2294.678, 1540.268, 124.915)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_shotgun_repeating")
                }
            },
            [5] = {
                desc = "A daring raider with coyote companions, raiding homesteads near the Heartlands. Approach cautiously, the coyotes are as deadly as their master.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 0.5136,
                        health = 300,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 0
                        },
                        pos = vector3(1666.085, 863.385, 142.554),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 132.219,
                        health = 300,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 2
                        },
                        pos = vector3(1660.302, 864.920, 143.510),
                        weapon = GetHashKey("weapon_coyote")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COYOTE"),
                        blip = true,
                        combat = "offensive",
                        heading = 182.883,
                        health = 300,
                        name = "Coyote",
                        ped = {
                            model = GetHashKey("a_c_coyote_01"),
                            preset = 1
                        },
                        pos = vector3(1662.042, 858.670, 143.487),
                        weapon = GetHashKey("weapon_coyote")
                    }
                },
                name = "5. Quest: Coyote's Rampage",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(1622.918, 822.446, 144.782),
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
                    heading = 150.834,
                    health = 250.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("re_beartrap_males_01"),
                    name = "Wild Raider",
                    pos = {
                        vector3(1705.308, 774.415, 128.276),
                        vector3(1753.384, 864.778, 118.360),
                        vector3(1717.600, 897.939, 131.122)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_shotgun_repeating")
                }
            },
            [6] = {
                desc = "A menacing figure preying on travelers with a loyal cougar. Known to haunt the hills surrounding Mount Hagen.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_COUGAR"),
                        blip = true,
                        combat = "offensive",
                        heading = 132.693,
                        health = 300,
                        name = "Cougar",
                        ped = {
                            model = GetHashKey("a_c_cougar_01"),
                            preset = 0
                        },
                        pos = vector3(-1351.298, 991.576, 178.869),
                        weapon = GetHashKey("weapon_cougar")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COUGAR"),
                        blip = true,
                        combat = "offensive",
                        heading = 131.654,
                        health = 300,
                        name = "Cougar",
                        ped = {
                            model = GetHashKey("a_c_cougar_01"),
                            preset = 1
                        },
                        pos = vector3(-1360.079, 996.309, 180.534),
                        weapon = GetHashKey("weapon_cougar")
                    }
                },
                name = "6. Quest: Cougar's Prowl",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(-1401.337, 938.425, 169.325),
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
                    heading = 100.834,
                    health = 250.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_animalpoacher_04"),
                    name = "Mountain Menace",
                    pos = {
                        vector3(-1327.793, 1021.723, 177.214),
                        vector3(-1285.209, 1012.204, 173.947),
                        vector3(-1321.050, 1067.693, 182.929)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_repeater_henry")
                }
            },
            [7] = {
                desc = "An elusive outlaw who strikes from the shadows, assisted by a deadly panther. Last seen in the dense foliage near Bluewater Marsh.",
                guards = {
                    {
                        animal_brawl = false,
                        blip = true,
                        combat = "offensive",
                        heading = 130.86,
                        health = 300,
                        name = "Panther",
                        ped = {
                            model = GetHashKey("a_c_panther_01"),
                            preset = 0
                        },
                        pos = vector3(2393.354, -260.708, 42.037),
                        weapon = false
                    },
                    {
                        animal_brawl = GetHashKey("BS_COUGAR"),
                        blip = true,
                        combat = "offensive",
                        heading = 108.394,
                        health = 300,
                        name = "Panther",
                        ped = {
                            model = GetHashKey("a_c_panther_01"),
                            preset = 1
                        },
                        pos = vector3(2394.948, -264.149, 42.024),
                        weapon = GetHashKey("weapon_cougar")
                    },
                    {
                        animal_brawl = GetHashKey("BS_COUGAR"),
                        blip = true,
                        combat = "offensive",
                        heading = 111.731,
                        health = 300,
                        name = "Panther",
                        ped = {
                            model = GetHashKey("a_c_panther_01"),
                            preset = 1
                        },
                        pos = vector3(2397.215, -271.827, 41.756),
                        weapon = GetHashKey("weapon_cougar")
                    }
                },
                name = "7. Quest: Panther's Ambush",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(2356.300, -332.566, 41.930),
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
                    heading = 200.834,
                    health = 250.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_wapwarriors_01"),
                    name = "Shadow Stalker",
                    pos = {
                        vector3(2361.505, -227.036, 41.503),
                        vector3(2413.722, -186.174, 43.385),
                        vector3(2461.676, -207.851, 42.564)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_bow")
                }
            },
            [8] = {
                desc = "A regal hunter with a majestic lion by their side, causing chaos in the savannas of New Austin.",
                guards = {
                    {
                        animal_brawl = false,
                        blip = true,
                        combat = "offensive",
                        heading = 351.333,
                        health = 300,
                        name = "Lion",
                        ped = {
                            model = GetHashKey("a_c_lionmangy_01"),
                            preset = 0
                        },
                        pos = {
                            vector3(-2354.691, -2739.783, 69.169),
                            vector3(-2398.681, -2719.820, 70.121),
                            vector3(-2422.880, -2776.215, 68.329)
                        },
                        weapon = false
                    }
                },
                name = "8. Quest: Lion's Pride",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(-2367.759, -2669.172, 70.538),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
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
                    heading = 200.834,
                    health = 50.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_re_treasurehunter_females_01"),
                    name = "Regal Hunter",
                    pos = {
                        vector3(-2294.750, -2821.226, 61.178),
                        vector3(-2451.935, -2873.061, 67.741),
                        vector3(-2524.968, -2749.038, 73.098)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_sniperrifle_carcano")
                }
            },
            [9] = {
                desc = "A trickster with a sly Badger companion, known for outsmarting lawmen. Spotted near the flowing rivers of New Austin.",
                guards = {
                    {
                        animal_brawl = GetHashKey("BS_BADGER"),
                        blip = false,
                        combat = "offensive",
                        heading = 172.68,
                        health = 300,
                        name = "Badger",
                        ped = {
                            model = GetHashKey("a_c_badger_01"),
                            preset = 0
                        },
                        pos = vector3(-1863.303, -2413.413, 48.515),
                        weapon = GetHashKey("weapon_badger")
                    },
                    {
                        animal_brawl = GetHashKey("BS_BADGER"),
                        blip = false,
                        combat = "offensive",
                        heading = 140.154,
                        health = 300,
                        name = "Badger",
                        ped = {
                            model = GetHashKey("a_c_badger_01"),
                            preset = 0
                        },
                        pos = vector3(-1868.115, -2419.131, 49.089),
                        weapon = GetHashKey("weapon_badger")
                    },
                    {
                        animal_brawl = GetHashKey("BS_BADGER"),
                        blip = false,
                        combat = "offensive",
                        heading = 172.389,
                        health = 300,
                        name = "Badger",
                        ped = {
                            model = GetHashKey("a_c_badger_01"),
                            preset = 0
                        },
                        pos = vector3(-1871.056, -2431.273, 50.037),
                        weapon = GetHashKey("weapon_badger")
                    },
                    {
                        animal_brawl = GetHashKey("BS_BADGER"),
                        blip = false,
                        combat = "offensive",
                        heading = 7.434,
                        health = 300,
                        name = "Badger",
                        ped = {
                            model = GetHashKey("a_c_badger_01"),
                            preset = 0
                        },
                        pos = vector3(-1798.829, -2466.431, 44.790),
                        weapon = GetHashKey("weapon_badger")
                    },
                    {
                        animal_brawl = GetHashKey("BS_BADGER"),
                        blip = false,
                        combat = "offensive",
                        heading = 85.137,
                        health = 300,
                        name = "Badger",
                        ped = {
                            model = GetHashKey("a_c_badger_01"),
                            preset = 0
                        },
                        pos = vector3(-1808.727, -2459.602, 44.858),
                        weapon = GetHashKey("weapon_badger")
                    }
                },
                name = "9. Quest: Badger's Cunning",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(-1850.541, -2498.336, 48.075),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
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
                    heading = 290.834,
                    health = 50.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("re_stalkinghunter_males_01"),
                    name = "Sly Trickster",
                    pos = {
                        vector3(-1813.835, -2397.802, 43.098),
                        vector3(-1727.775, -2425.662, 41.9),
                        vector3(-1772.645, -2310.615, 42.264)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_thrown_molotov")
                }
            },
            [10] = {
                desc = "A howling renegade leading a pack of wolves, terrorizing the snowy landscapes of Grizzlies West.",
                guards = {
                    {
                        animal_brawl = false,
                        blip = false,
                        combat = "offensive",
                        heading = 277.78,
                        health = 500,
                        name = "Wolf Pack Leader",
                        ped = {
                            model = GetHashKey("mp_a_c_wolf_01"),
                            preset = 0
                        },
                        pos = vector3(-1435.282, 416.320, 102.354),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 209.13,
                        health = 200,
                        name = "Wolf",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 0
                        },
                        pos = vector3(-1423.049, 403.509, 102.956),
                        weapon = GetHashKey("weapon_wolf")
                    },
                    {
                        animal_brawl = GetHashKey("BS_WOLF"),
                        blip = false,
                        combat = "offensive",
                        heading = 146.419,
                        health = 200,
                        name = "Wolf",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 0
                        },
                        pos = vector3(-1444.335, 385.478, 100.842),
                        weapon = GetHashKey("weapon_wolf")
                    }
                },
                name = "10. Quest: Wolf's Pack",
                reward = {
                    {
                        amount = 10,
                        id = "money"
                    }
                },
                start_pos = vector3(-1406.218, 370.812, 103.031),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
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
                    heading = 10.834,
                    health = 50.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_animalpoacher_09"),
                    name = "Howling Renegade",
                    pos = {
                        vector3(-1480.785, 395.595, 102.982),
                        vector3(-1522.357, 441.997, 105.407),
                        vector3(-1463.541, 500.117, 105.866)
                    },
                    preset = 0,
                    weapon = GetHashKey("weapon_rifle_boltaction")
                }
            }
        },
        reset_progress = {
            enable = true,
            price = 500
        },
        shop = {
            completed_quest_requirement = 10,
            items = {
                {
                    id = "water",
                    price = 5
                },
                {
                    id = "bread",
                    price = 5
                }
            }
        }
    },
    [4] = {
        blip = {
            enable = false,
            sprite = -2034972265
        },
        coords = vector3(-1297.535278, 410.273285, 95.383873),
        heading = 243.35,
        job = nil,
        name = "Zubatej Tony",
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
                desc = "Vinšuju, mám takovou prosbičku, potřeboval bych, abys zabil jednoho medvídka, je takovej malej, neboj se ničeho nic. Vyraž na tohle místo a zbytek uvidíš. Je to takový veliký zamrzlý jezero.",
                guards = nil,
                name = "Taková specialitka",
                reward = {
                    {
                        amount = 100,
                        id = "money"
                    }
                },
                start_pos = vector3(-905.938660, 1499.504761, 245.220871),
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
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_a_c_bear_01"),
                    name = "Lední medvěd",
                    pos = {
                        vector3(-1013.4117431640625, 1657.4794921875, 238.3094940185547)
                    },
                    preset = 3,
                    weapon = GetHashKey("weapon_bear")
                }
            }
        },
        reset_progress = {
            enable = true,
            price = 5
        },
        shop = nil
    },
    [5] = {
        blip = {
            enable = false,
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
            enable = false,
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
    },
    [7] = {
        blip = {
            color = 0,
            enable = false,
            scale = 1.0,
            sprite = -2034972265,
            text = "Nové NPC 7"
        },
        coords = vector3(-278.318939, 920.661804, 128.282364),
        heading = 292.0,
        job = nil,
        name = "John Calder",
        other_quest_requirement = false,
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("mp_u_m_m_protect_friendly_armadillo_01"),
            preset = 0,
            scenario = ""
        },
        quests = {
            [1] = {
                desc = "Videl som ťa pri ohni. Vyzeráš, že by si prežil aj noc v lese. Ale prežiť nie je dosť.. ukáž, že vieš aj zabíjať. Zober pušku a prines mi vlčiu kožu.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Grey Wolf",
                        ped = {
                            model = GetHashKey("a_c_wolf"),
                            preset = 0
                        },
                        pos = vector3(107.480019, 981.827393, 214.197342),
                        weapon = GetHashKey("WEAPON_ANIMAL")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Grey Wolf",
                        ped = {
                            model = GetHashKey("A_C_Wolf"),
                            preset = 0
                        },
                        pos = vector3(108.68409, 981.641052, 214.228195),
                        weapon = GetHashKey("WEAPON_ANIMAL")
                    }
                },
                name = "Zubami sa to začína",
                reward = {
                    {
                        amount = 15.0,
                        id = "money"
                    },
                    {
                        amount = 1.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(105.430611, 980.955933, 214.17067),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_a_c_wolf_01"),
                    name = "Alfa Wolf",
                    pos = vector3(105.430611, 980.955933, 214.17067),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_ANIMAL")
                }
            },
            [2] = {
                desc = "Prvá koža je vždy najťažšia. Ale nie posledná.Vlci boli len predjedlo. Teraz si daj hlavný chod. Medvede zúrili v horách a teraz sú príliš blízko nášmu táboru. Urob niečo skôr, než z neho ostane len kopa kostí.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Little Bear",
                        ped = {
                            model = GetHashKey("a_c_bear_01"),
                            preset = 0
                        },
                        pos = vector3(1370.107788, 977.002625, 168.487411),
                        weapon = GetHashKey("WEAPON_ANIMAL")
                    }
                },
                name = "Hrubá sila",
                reward = {
                    {
                        amount = 20.0,
                        id = "money"
                    },
                    {
                        amount = 3.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(1370.107788, 977.002625, 168.487411),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_c_bear_01"),
                    name = "Yogi Bear",
                    pos = vector3(1370.107788, 977.002625, 168.487411),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_ANIMAL")
                }
            },
            [3] = {
                desc = "Prvá koža je vždy najťažšia. Ale nie posledná. Videl som tu jedného chlapa. Volá sa Ellis. Tvári sa ako tulák, ale mne dlží viac než len slovo. Nájdeš ho v tábore. A nevracaj sa s prázdnymi rukami.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Friend of Ellis",
                        ped = {
                            model = GetHashKey("mp_u_m_m_protect_valentine_01"),
                            preset = 0
                        },
                        pos = vector3(586.608765, 1421.664551, 187.156357),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    }
                },
                name = "Starý dlžník",
                reward = {
                    {
                        amount = 5.0,
                        id = "mining_gold_nugget"
                    },
                    {
                        amount = 3.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(588.56781, 1422.412598, 187.271881),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 150.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_lom_saloon_drunk_01"),
                    name = "Ellis",
                    pos = vector3(588.56781, 1422.412598, 187.272568),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                }
            },
            [4] = {
                desc = "Tak sa predsa ukázal. Mrzí ma, že to skončilo takto.. Ellis mal brata. A ten si nenechá tvoje dielo len tak. Idú po nás. Ak chceš prežiť, vyraz prvý. Ich tábor je neďaleko.",
                guards = {
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 0.0,
                        health = 251.0,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("mp_u_m_m_fos_dropoff_01"),
                            preset = 0
                        },
                        pos = vector3(-1573.848145, 496.913116, 114.77198),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 100,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("mp_u_m_m_fos_dropoff_01"),
                            preset = 0
                        },
                        pos = vector3(-1582.569336, 499.971832, 114.8209),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE_VAMPIRE")
                    }
                },
                name = "Bratov hnev",
                reward = {
                    {
                        amount = 7.0,
                        id = "mining_gold_nugget"
                    },
                    {
                        amount = 5.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-1579.517944, 498.100342, 114.772087),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 250.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_lom_sd_dockworker_01"),
                    name = "Brother of Ellis",
                    pos = vector3(-1580.499878, 497.148254, 114.772049),
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_cattleman")
                }
            },
            [5] = {
                desc = "Vidíš? Každý čin má dôsledky. Ale ty si nie dôsledok, ty si ich nočná mora. Niekto vyčistil náš severný tábor. Žiadny výstrel, len stopy a krv. Zisti, kto to bol. A pošli im späť správu. Ohňom a olovom.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 302.0,
                        health = 100,
                        name = "Guard",
                        ped = {
                            model = GetHashKey("mp_u_m_m_lom_asbmercs_01"),
                            preset = 0
                        },
                        pos = vector3(-1761.172485, 1688.692627, 238.475052),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 150.0,
                        health = 100,
                        name = "Guard",
                        ped = {
                            model = GetHashKey("mp_g_m_m_armoredjuggernauts_01"),
                            preset = 0
                        },
                        pos = vector3(-1753.50769, 1694.796997, 237.322586),
                        weapon = GetHashKey("WEAPON_REVOLVER_SCHOFIELD")
                    }
                },
                name = "Zlomený tábor",
                reward = {
                    {
                        amount = 35.0,
                        id = "money"
                    },
                    {
                        amount = 10,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-1759.819702, 1690.248535, 238.307617),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 88.0,
                    health = 150.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_fos_roguethief_01"),
                    name = "Thatcher",
                    pos = vector3(-1752.206543, 1687.511475, 237.685303),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_RIFLE_SPRINGFIELD")
                }
            },
            [6] = {
                desc = "Človeče, ty si hurikán. Už ťa počujú aj v susednom kraji. Braxton... starý zabijak. Žije v ruinách pevnosti. Má zlaté zuby a striebornú pušku. Kto ho dostane, má môj rešpekt. ",
                guards = {
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 25.0,
                        health = 100,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 0
                        },
                        pos = vector3(2460.662354, 279.498291, 71.112892),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 308.0,
                        health = 125.0,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 0
                        },
                        pos = vector3(2446.236816, 281.200623, 74.802368),
                        weapon = GetHashKey("WEAPON_RIFLE_BOLTACTION")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 103.0,
                        health = 100,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("mp_g_m_m_animalpoachers_01"),
                            preset = 0
                        },
                        pos = vector3(2459.092529, 304.112762, 70.425186),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    }
                },
                name = "Chlap menom Braxton",
                reward = {
                    {
                        amount = 35.0,
                        id = "money"
                    },
                    {
                        amount = 15.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(2453.409912, 291.196045, 70.440529),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 170.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_fm_bounty_infiltration_males_01"),
                    name = "Braxton",
                    pos = vector3(2445.332275, 294.061432, 70.46312),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_REPEATER_WINCHESTER")
                }
            },
            [7] = {
                desc = "Takže Braxton padol. Myslel som, že prežije všetkých. Ale zabudol som.. teraz si tu ty. V horách miznú muži. Nie sú to medvede. Nie sú to ľudia. Ak máš gule, zisti, čo to je. A nevracaj sa bez dôkazu, že si to prežil.",
                guards = {
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 225.0,
                        health = 100,
                        name = "Secret Ones",
                        ped = {
                            model = GetHashKey("g_m_m_uniswamp_01"),
                            preset = 0
                        },
                        pos = vector3(-1906.834351, 1349.628784, 202.368729),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 121.0,
                        health = 125.0,
                        name = "Secret Ones",
                        ped = {
                            model = GetHashKey("g_m_m_uniswamp_01"),
                            preset = 0
                        },
                        pos = vector3(-1886.828125, 1352.679565, 203.337189),
                        weapon = GetHashKey("WEAPON_PISTOL_VOLCANIC")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 56.0,
                        health = 100,
                        name = "Secret Ones",
                        ped = {
                            model = GetHashKey("g_m_m_uniswamp_01"),
                            preset = 0
                        },
                        pos = vector3(-1885.404053, 1330.788208, 200.379471),
                        weapon = GetHashKey("WEAPON_BOW")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 150.0,
                        name = "Secret Ones",
                        ped = {
                            model = GetHashKey("g_m_m_uniswamp_01"),
                            preset = 0
                        },
                        pos = vector3(-1913.178101, 1334.863647, 200.647034),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE_VAMPIRE")
                    }
                },
                name = "Hlasy v snehu",
                reward = {
                    {
                        amount = 20.0,
                        id = "west_coin"
                    },
                    {
                        amount = 3.0,
                        id = "mining_ruby"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-1895.757812, 1347.234741, 201.07399),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 312.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_a_f_m_unicorpse_01"),
                    name = "The Leader",
                    pos = vector3(-1898.536255, 1338.985352, 200.757614),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_SHOTGUN_DOUBLEBARREL")
                }
            },
            [8] = {
                desc = "Čo to bolo, to ani neviem. Ale verím ti. Len sa už nepozeraj do tých tieňov. Dostaneš odmenu. Ale len ak ju vezmeš z rúk niekoho, kto ťa chce vidieť pod zemou. Choď si po svoj balík a nedaj sa zabiť.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 135.0,
                        health = 150.0,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("a_m_m_rkrsurvivalist_01"),
                            preset = 0
                        },
                        pos = vector3(2354.138428, 1591.509644, 85.484474),
                        weapon = GetHashKey("WEAPON_REPEATER_WINCHESTER")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 255.0,
                        health = 100,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("a_m_m_rkrsurvivalist_01"),
                            preset = 0
                        },
                        pos = vector3(2377.837891, 1588.37793, 85.939423),
                        weapon = GetHashKey("WEAPON_RIFLE_SPRINGFIELD")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 182.0,
                        health = 100,
                        name = "Buddy",
                        ped = {
                            model = GetHashKey("a_m_m_rkrsurvivalist_01"),
                            preset = 0
                        },
                        pos = vector3(2368.5271, 1583.230957, 85.592773),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    }
                },
                name = "Odmena s háčikom",
                reward = {
                    {
                        amount = 25.0,
                        id = "west_coin"
                    },
                    {
                        amount = 2.0,
                        id = "mining_diamond"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(2366.121094, 1585.518311, 85.596336),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 196.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("a_m_m_huntertravelers_warm_01"),
                    name = "Granger",
                    pos = vector3(2359.327393, 1590.972168, 85.590172),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_SHOTGUN_REPEATING")
                }
            },
            [9] = {
                desc = "To nie je len odmena. To je znak, že ťa už berú vážne. Tichý Jack. Nehovorí. Nestrieľa ako ostatní. Len príde a nie si. Ja som prežil. Ale chcem, aby si ho našiel. A ukončil to. Raz a navždy.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 155.0,
                        health = 150.0,
                        name = "Guard",
                        ped = {
                            model = GetHashKey("a_m_m_unicorpse_01"),
                            preset = 0
                        },
                        pos = vector3(2779.831055, 529.870483, 71.650719),
                        weapon = GetHashKey("WEAPON_REPEATER_HENRY")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 150.0,
                        name = "Guard",
                        ped = {
                            model = GetHashKey("a_m_m_unicorpse_01"),
                            preset = 0
                        },
                        pos = vector3(2774.720703, 535.58783, 68.59079),
                        weapon = GetHashKey("WEAPON_LASSO")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 145.0,
                        health = 175.0,
                        name = "Guard",
                        ped = {
                            model = GetHashKey("a_m_m_unicorpse_01"),
                            preset = 0
                        },
                        pos = vector3(2783.795898, 528.661987, 68.463554),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    }
                },
                name = "Posledný cieľ: Tichý Jack",
                reward = {
                    {
                        amount = 50.0,
                        id = "west_coin"
                    },
                    {
                        amount = 1.0,
                        id = "smelting_gold_250"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(2781.142578, 530.017273, 68.434708),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 350.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("u_m_m_story_armadillo_01"),
                    name = "Tichý Jack",
                    pos = vector3(2783.203613, 531.044128, 71.354889),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_THROWN_THROWING_KNIVES")
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
            completed_quest_requirement = 0.0,
            items = {

            }
        }
    },
    [8] = {
        blip = {
            color = 0,
            enable = false,
            scale = 1.0,
            sprite = -2034972265,
            text = "Nové NPC 8"
        },
        coords = vector3(-5414.122559, -2920.72876, 1.737971),
        heading = 107.0,
        job = nil,
        name = "Bad Debt",
        other_quest_requirement = false,
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("mp_u_f_m_bountytarget_012"),
            preset = 0,
            scenario = ""
        },
        quests = {
            [1] = {
                desc = "Zmizol karavan. Išli spodkom, cez prach a kamene. Posledná stopa končí kúsok za vyschnutým korytom. Choď tam.. nájdi, čo z neho ostalo.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 175.0,
                        health = 100,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_u_m_m_protect_armadillo_01"),
                            preset = 0
                        },
                        pos = vector3(-5248.972168, -3852.479248, -2.34434),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 267.0,
                        health = 100,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_u_m_m_protect_armadillo_01"),
                            preset = 0
                        },
                        pos = vector3(-5255.249512, -3841.655518, -1.532533),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    }
                },
                name = "V prachu cesty",
                reward = {
                    {
                        amount = 15.0,
                        id = "money"
                    },
                    {
                        amount = 3.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-5244.421875, -3856.830322, -2.959679),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 47.0,
                    health = 125.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_protect_friendly_armadillo_01"),
                    name = "Lenny",
                    pos = vector3(-5243.10498, -3861.128418, -2.996366),
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_cattleman")
                }
            },
            [2] = {
                desc = "Takže to nebol len vietor, čo ich zmietol. Niekto to plánoval. Flint. Tak mu hovoria. Ten bastard necháva po sebe oheň a škrabance. Keď ho nájdeš, povedz mu, že sa minulosť vracia. A nesie zápach pušného prachu.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 173.0,
                        health = 100,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("u_m_m_riodonkeyrider_01"),
                            preset = 0
                        },
                        pos = vector3(-4407.90332, -2201.348877, 40.582642),
                        weapon = GetHashKey("WEAPON_RIFLE_VARMINT")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 237.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("u_m_m_riodonkeyrider_01"),
                            preset = 0
                        },
                        pos = vector3(-4417.961426, -2208.027588, 38.840752),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 168.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("u_m_m_shackserialkiller_01"),
                            preset = 0
                        },
                        pos = vector3(-4405.639648, -2200.426025, 40.863403),
                        weapon = GetHashKey("WEAPON_REVOLVER_SCHOFIELD")
                    }
                },
                name = "Hovoria mu Flint",
                reward = {
                    {
                        amount = 20.0,
                        id = "money"
                    },
                    {
                        amount = 3.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-4413.70459, -2204.623779, 39.306332),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 178.0,
                    health = 150.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("u_m_m_story_armadillo_01"),
                    name = "Flint",
                    pos = vector3(-4415.004883, -2194.57959, 40.135784),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_PISTOL_VOLCANIC")
                }
            },
            [3] = {
                desc = "Flint si myslel, že sa púšť naňho zabudne. Teraz je sám jej súčasťou. Na skalách visí moje meno. Nie ako pamiatka, ale ako výsmech. Preškrtnuté, s nápisom ‘ZRADCA’. Chcem, aby to zmizlo. A ešte viac chcem, aby zmizol ten, čo to tam dal.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 93.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("u_m_m_unidusterhenchman_02"),
                            preset = 0
                        },
                        pos = vector3(-3216.039307, -2443.644043, 28.938255),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 15.0,
                        health = 115.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("u_m_m_valpokerplayer_01"),
                            preset = 0
                        },
                        pos = vector3(-3211.849854, -2431.097168, 29.319489),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 89.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("u_m_y_czphomesteadson_03"),
                            preset = 0
                        },
                        pos = vector3(-3213.453857, -2437.436768, 29.214571),
                        weapon = GetHashKey("WEAPON_BOW")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("a_m_m_unicorpse_01"),
                            preset = 0
                        },
                        pos = vector3(-3209.112061, -2431.346924, 29.805107),
                        weapon = GetHashKey("WEAPON_PISTOL_VOLCANIC")
                    }
                },
                name = "Zvesené meno",
                reward = {
                    {
                        amount = 3.0,
                        id = "west_coin"
                    },
                    {
                        amount = 3.0,
                        id = "mining_emelald"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-3216.351318, -2441.578857, 28.845476),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 74.0,
                    health = 150.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("u_m_m_unidusterhenchman_01"),
                    name = "Traitor",
                    pos = vector3(-3206.945068, -2440.309814, 30.418407),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_REPEATER_HENRY")
                }
            },
            [4] = {
                desc = "Moje meno znova patrí tichu. A ty si ho tam vrátil. Baňa... kedysi tam ťažili zlato, potom tam strieľali ľudí. Dnes odtiaľ vychádza zvuk, čo nepatrí ani jednému. Choď tam. A ak to dýcha.. zastav to.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 257.0,
                        health = 100,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-5983.976562, -3223.999268, -21.123213),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 245.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-5995.682617, -3232.679688, -21.082371),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 250.0,
                        health = 100,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-5987.939941, -3229.449951, -21.082338),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-5998.43457, -3239.782959, -21.131464),
                        weapon = GetHashKey("WEAPON_RIFLE_SPRINGFIELD")
                    }
                },
                name = "Hniloba pod kameňmi",
                reward = {
                    {
                        amount = 30.0,
                        id = "money"
                    },
                    {
                        amount = 5.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-5987.761719, -3229.530029, -21.08235),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = true,
                    combat = "offensive",
                    extra_reward = false,
                    heading = 255.0,
                    health = 175.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("g_m_m_unibanditos_01"),
                    name = "Leroy",
                    pos = vector3(-5987.124023, -3215.130615, -17.554073),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_SHOTGUN_REPEATING")
                }
            },
            [5] = {
                desc = "Neviem, koho si tam stretol. A radšej to nechcem vedieť. Ale si späť. Pri Tumbleweede je muž menom Jeb. Tvrdí, že len čapuje. Ale viem, že vie viac. A jeho jazyk sa vie plaziť, keď mu zacinká pár mincí.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 241.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_lbm_carmela_banditos_01"),
                            preset = 0
                        },
                        pos = vector3(-5590.152344, -3322.524902, -22.061527),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 263.0,
                        health = 125.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("mp_lbm_carmela_banditos_01"),
                            preset = 0
                        },
                        pos = vector3(-5583.161133, -3311.822754, -22.034292),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 150.0,
                        name = "Companions",
                        ped = {
                            model = GetHashKey("a_m_m_unicorpse_01"),
                            preset = 0
                        },
                        pos = vector3(-5589.488281, -3327.057861, -22.052458),
                        weapon = GetHashKey("WEAPON_REPEATER_WINCHESTER")
                    }
                },
                name = "Jazyk hada",
                reward = {
                    {
                        amount = 7.0,
                        id = "mining_gold_nugget"
                    },
                    {
                        amount = 7.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-5587.454102, -3317.443848, -22.05471),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 48.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_musician_01"),
                    name = "Jeb",
                    pos = vector3(-5585.194824, -3315.340088, -22.048611),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_THROWN_THROWING_KNIVES")
                }
            },
            [6] = {
                desc = "Jazyk rozviazaný, oči klamlivé. Ale povedal dosť. Viem, kam sa pozrieť ďalej. Nebudem ti klamať. Kedysi som jazdila so Zlatými Čeľusťami. Lovili sme, kradli sme. A potom som im zlomila väz. Myslia si, že som sa ukryla. Ale len čakám. Nájdi ich a ukonči to.",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 123.0,
                        health = 120.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3437.007812, -2721.151611, -4.297009),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 3.0,
                        health = 155.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3432.56543, -2722.700928, -4.385221),
                        weapon = GetHashKey("WEAPON_MELEE_KNIFE")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 69.0,
                        health = 120.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 1
                        },
                        pos = vector3(-3421.008545, -2737.015381, -4.470172),
                        weapon = GetHashKey("WEAPON_RIFLE_SPRINGFIELD")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 281.0,
                        health = 115.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3435.583496, -2716.54541, -4.129017),
                        weapon = GetHashKey("WEAPON_REVOLVER_SCHOFIELD")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 0.0,
                        health = 125.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("mp_g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3410.651611, -2724.829834, -4.802305),
                        weapon = GetHashKey("WEAPON_REPEATER_WINCHESTER")
                    }
                },
                name = "Hriechy minulosti",
                reward = {
                    {
                        amount = 10.0,
                        id = "mining_gold_nugget"
                    },
                    {
                        amount = 10,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-3431.868652, -2719.470459, -4.405636),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 303.0,
                    health = 200.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("u_m_m_bht_banditomine"),
                    name = "Don Julio",
                    pos = vector3(-3443.215088, -2715.333496, -4.135269),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_REPEATER_WINCHESTER")
                }
            },
            [7] = {
                desc = "Niektorí pravdepodobne ušli. Posledný z nich sa volá Silas. Má skrýšu. V starom kamennom tábore. Dym odtiaľ stúpa len v noci a vždy krátko. To znamená jediné.. nechcú, aby ich niekto videl. Skús to zmeniť..",
                guards = {
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 102.0,
                        health = 125.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3953.995117, -2136.226562, -0.800277),
                        weapon = GetHashKey("WEAPON_RIFLE_BOLTACTION")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 157.0,
                        health = 125.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3957.23584, -2126.623047, 0.427807),
                        weapon = GetHashKey("WEAPON_RIFLE_SPRINGFIELD")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 286.0,
                        health = 125.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3981.687012, -2145.141113, -6.372198),
                        weapon = GetHashKey("weapon_revolver_cattleman")
                    },
                    {
                        blip = false,
                        combat = "offensive",
                        heading = 111.0,
                        health = 115.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3958.622314, -2149.638184, -5.344475),
                        weapon = GetHashKey("WEAPON_REPEATER_HENRY")
                    },
                    {
                        blip = false,
                        combat = "defensive",
                        heading = 116.0,
                        health = 115.0,
                        name = "Jaw",
                        ped = {
                            model = GetHashKey("g_m_m_unibanditos_01"),
                            preset = 0
                        },
                        pos = vector3(-3948.56543, -2141.719727, -4.490323),
                        weapon = GetHashKey("WEAPON_PISTOL_VOLCANIC")
                    }
                },
                name = "Ticho v piesku",
                reward = {
                    {
                        amount = 25.0,
                        id = "mining_gold_nugget"
                    },
                    {
                        amount = 50.0,
                        id = "west_coin"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(-3960.694580, -2134.012207, -4.819751),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 162.0,
                    health = 250.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("mp_u_m_m_legendarybounty_09"),
                    name = "Silas",
                    pos = vector3(-3955.353271, -2126.597412, -4.220953),
                    preset = 0,
                    weapon = GetHashKey("WEAPON_SHOTGUN_PUMP")
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
    },
    [9] = {
        blip = {
            color = 0,
            enable = false,
            scale = 1.0,
            sprite = -2034972265,
            text = "Nové NPC 9"
        },
        coords = vector3(2267.516602, -781.934448, 43.035713),
        heading = 17.0,
        job = {

        },
        name = "Carra",
        other_quest_requirement = false,
        ped = {
            anim = {
                "amb_rest_lean@world_human_lean@wall@right@male_b@idle_a",
                "idle_c"
            },
            model = GetHashKey("a_f_m_sdfancywhore_01"),
            preset = -1,
            scenario = ""
        },
        quests = {
            [1] = {
                desc = "ahjksgd ajklklůa hjgsd jklů",
                guards = {

                },
                name = "aaa",
                reward = {
                    {
                        amount = 1,
                        id = "money"
                    }
                },
                spawn_distance = 50.0,
                start_pos = vector3(2264.062012, -780.147583, 42.796612),
                target = {
                    areablip = {
                        radius = 60.0,
                        style = GetHashKey("BLIP_STYLE_FM_EVENT_RADIUS")
                    },
                    blip = false,
                    combat = "defensive",
                    extra_reward = false,
                    heading = 0.0,
                    health = 5000.0,
                    img = "https://raw.githubusercontent.com/abdulkadiraktas/rdr3_discoveries/master/useful_info_from_rpfs/textures/ui_textures_mp/images/toast_awards_set_p/awards_set_p_004.png",
                    model = GetHashKey("u_m_m_bht_odriscollsleeping"),
                    name = "Nepřítel",
                    pos = vector3(2246.978271, -762.662781, 42.949356),
                    preset = 0,
                    weapon = GetHashKey("weapon_revolver_cattleman")
                }
            }
        },
        random_coords = {

        },
        reset_progress = {
            enable = true,
            price = 1.0
        },
        shop = {
            completed_quest_requirement = 0,
            items = {

            }
        }
    },
    [10] = {
        blip = {
            color = 0,
            enable = true,
            scale = 1.0,
            sprite = -2034972265,
            text = "Nové NPC 10"
        },
        coords = vector3(0.0,0.0,0.0),
        heading = 0.0,
        job = nil,
        name = "sky",
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
    },
    [11] = {
        blip = {
            color = 0,
            enable = true,
            scale = 1.0,
            sprite = -2034972265,
            text = "Nové NPC 11"
        },
        coords = vector3(0.0,0.0,0.0),
        heading = 0.0,
        job = nil,
        name = "sho",
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