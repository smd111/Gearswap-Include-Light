
Conquest = {neck = {},ring = {}}
weapon_types_count = 1
range_types_count = 1
armor_types_count = 1
sets.pretarget = {}
sets.precast = {}
sets.midcast = {}
sets.aftercast = {}
sets.pet_midcast = {}
sets.pet_aftercast = {}
sets.armor = {}
sets.range = {}
sets.weapon = {}
sets.WS_types={['Hand-to-Hand']={head="Tokon Hachimaki"},['Dagger']={head="Issen Hachimaki"},['Sword']={head="Kensho Hachimaki"},['Great Sword']={head="Hako Hachimaki"},
        ['Axe']={head="Ryoshi Hachimaki"},['Great Axe']={head="Senshin Hachimaki"},['Scythe']={head="Rekka Hachimaki"},['Polearm']={head="Shitotsu Hachimaki"},
        ['Katana']={head="Kanja Hachimaki"},['Great Katana']={head="Kengo Hachimaki"},['Club']={head="Rokugo Hachimaki"},['Staff']={head="Hakke Hachimaki"},
        ['Archery']={head="Shunten Hachimaki"},['Marksmanship']={head="Saika Hachimaki"},['Throwing']={},}
sets.ws_belt={Dark={waist="Shadow Belt"},Water={waist="Aqua Belt"},Earth={waist="Soil Belt"},Ice={waist="Snow Belt"},Fire={waist="Flame Belt"},Wind={waist="Breeze Belt"},
        Lightning={waist="Thunder Belt"},Light={waist="Light Belt"},}
sets.ws_neck={Dark={neck="Shadow Gorget"},Water={neck="Aqua Gorget"},Earth={neck="Soil Gorget"},Ice={neck="Snow Gorget"},Fire={neck="Flame Gorget"},
        Wind={neck="Breeze Gorget"},Lightning={neck="Thunder Gorget"},Light={neck="Light Gorget"},}
sets.spell_obi={Fire={waist="Karin Obi"},Earth={waist="Dorin Obi"},Water={waist="Suirin Obi"},Wind={waist="Furin Obi"},Ice={waist="Hyorin Obi"},
        Lightning={waist="Rairin Obi"},Light={waist="Korin Obi"},Dark={waist="Anrin Obi"},}
        --Weapon types
weapon_types = L{'Axe','Club','Dagger','Great_Axe','Great_Sword','Hand-to-Hand','Polearm','Scythe','Staff','Sword','Great_Katana','Katana','Reserve','None'}
        --Range types
range_types = L{'Archery','Marksmanship','Throwing','Fishing','Soultrapper','Wind_Instruments','String_Instruments','Handbells','Other'}
        --Armore types
armor_types = L{'Basic','Tp','PDT','MDT'}
sets.staff = {
        Atk = {Fire={main="Atar I",sub="Fire Grip"},Ice={main="Vourukasha I",sub="Ice Grip"},Wind={main="Vayuvata I",sub="Wind Grip"},
            Earth={main="Vishrava I",sub="Earth Grip"},Lightning={main="Apamajas I",sub="Thunder Grip"},Water={main="Haoma I",sub="Water Grip"},
            Light={main="Arka I",sub="Light Grip"},Dark={main="Xsaeta I",sub="Dark Grip"},},
        Acc = {Fire={main="Atar II",sub="Fire Grip"},Ice={main="Vourukasha II",sub="Ice Grip"},Wind={main="Vayuvata II",sub="Wind Grip"},
            Earth={main="Vishrava II",sub="Earth Grip"},Lightning={main="Apamajas II",sub="Thunder Grip"},Water={main="Haoma II",sub="Water Grip"},
            Light={main="Arka II",sub="Light Grip"},Dark={main="Xsaeta II",sub="Dark Grip"},},
        Cure = {main="Arka IV",sub="Dominie's Grip",body="Heka's Kalasiris",hands="Bokwus Gloves",neck="Phalaina Locket",left_ear="Roundel Earring",},}
Conquest = {
    always=S{"Al'Taieu","Auroral Updraft","Empyreal Paradox","The Garden of Ru'Hmet","Grand Palace of Hu'Xzoi","Dynamis - Windurst","Dynamis - San d'Oria",
        "Dynamis - Bastok","Dynamis - Jeuno","Dynamis - Beaucedine","Dynamis - Xarcabard","Dynamis - Valkurm","Dynamis - Buburimu","Dynamis - Qufim","Dynamis - Tavnazia",
        "Apollyon","Temenos","Hall of Transference","Memory Flux","Promyvion - Dem","Promyvion - Holla","Promyvion - Mea","Promyvion - Vahzl","Spire of Dem",
        "Spire of Holla","Spire of Mea","Spire of Vahzl"},
    never=S{"Abyssea - La Theine","Abyssea - Konschtat","Abyssea - Tahrongi","Abyssea - Attohwa","Abyssea - Misareaux","Abyssea - Vunkerl","Abyssea - Altepa",
        "Abyssea - Uleguerand","Abyssea - Grauberg","Abyssea - Empyreal Paradox","Southern San d'Oria [S]","East Ronfaure [S]","Jugner Forest [S]",
        "Vunkerl Inlet [S]","Batallia Downs [S]","La Vaule [S]","Bastok Markets [S]","North Gustaberg [S]","Grauberg [S]","Pashhow Marshlands [S]",
        "Rolanberry Fields [S]","Beadeaux [S]","Windurst Waters [S]","West Sarutabaruta [S]","Fort Karugo-Narugo [S]","Meriphataud Mountains [S]",
        "Sauromugue Champaign [S]","Castle Oztroja [S]","Beaucedine Glacier [S]","Xarcabard [S]","Castle Zvahl Baileys [S]","Castle Zvahl Keep [S]","Throne Room [S]",
        "Garlaige Citadel [S]","Crawlers' Nest [S]","The Eldieme Necropolis [S]","Ruhotz Silvermines","Everbloom Hollow","Provenance","Walk of Echoes",
        "Open sea route to Al Zahbi","Open sea route to Mhaura","Al Zahbi","Aht Urhgan Whitegate","Wajaom Woodlands","Bhaflau Thickets","Nashmau","Arrapago Reef",
        "Ilrusi Atoll","Periqia","Talacca Cove","Silver Sea route to Nashmau","Silver Sea route to Al Zahbi","The Ashu Talif","Mount Zhayolm","Halvung",
        "Lebros Cavern","Navukgo Execution Chamber","Mamook","Mamool Ja Training Grounds","Jade Sepulcher","Aydeewa Subterrane","Leujaoam Sanctum",
        "Chocobo Circuit","The Colosseum","Alzadaal Undersea Ruins","Zhayolm Remnants","Arrapago Remnants","Bhaflau Remnants","Silver Sea Remnants",
        "Nyzul Isle","Hazhalm Testing Grounds","Caedarva Mire","Ghoyu's Reverie"},
    no_ring=S{"Hall of Transference","Memory Flux","Promyvion - Dem","Promyvion - Holla","Promyvion - Mea","Promyvion - Vahzl","Spire of Dem","Spire of Holla",
        "Spire of Mea","Spire of Vahzl"},
    neck={
        Mage={neck="Rep.Gold Medal"},
        Tank={neck="Windurstian Scarf"},
        Normal={neck="Grand T.K. Collar"},},
    ring ={
        Mage={left_ring="Gnd.Kgt. Ring"},
        Tank={left_ring="Ptr.Prt. Ring"},
        Normal={left_ring="Gld.Msk. Ring"},},}
nin_tools = {
        ["Monomi"]={t='Sanjaku-Tenugui',tb="Toolbag (Sanja)",tb_id=5417,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Aisha"]={t='Soshi',tb="Toolbag (Soshi)",tb_id=5734,ut="Chonofuda",utb="Toolbag (Cho)",utb_id=5869},
        ["Katon"]={t='Uchitake',tb="Toolbag (Uchi)",tb_id=5308,ut="Inoshishinofuda",utb="Toolbag (Ino)",utb_id=5867},
        ["Hyoton"]={t='Tsurara',tb="Toolbag (Tsura)",tb_id=5309,ut="Inoshishinofuda",utb="Toolbag (Ino)",utb_id=5867},
        ["Huton"]={t='Kawahori-Ogi',tb="Toolbag (Kawa)",tb_id=5310,ut="Inoshishinofuda",utb="Toolbag (Ino)",utb_id=5867},
        ["Doton"]={t='Makibishi',tb="Toolbag (Maki)",tb_id=5311,ut="Inoshishinofuda",utb="Toolbag (Ino)",utb_id=5867},
        ["Raiton"]={t='Hiraishin',tb="Toolbag (Hira)",tb_id=5312,ut="Inoshishinofuda",utb="Toolbag (Ino)",utb_id=5867},
        ["Suiton"]={t='Mizu-Deppo',tb="Toolbag (Mizu)",tb_id=5313,ut="Inoshishinofuda",utb="Toolbag (Ino)",utb_id=5867},
        ["Utsusemi"]={t='Shihei',tb="Toolbag (Shihe)",tb_id=5314,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Jubaku"]={t='Jusatsu',tb="Toolbag (Jusa)",tb_id=5315,ut="Chonofuda",utb="Toolbag (Cho)",utb_id=5869},
        ["Hojo"]={t='Kaginawa',tb="Toolbag (Kagi)",tb_id=5316,ut="Chonofuda",utb="Toolbag (Cho)",utb_id=5869},
        ["Kurayami"]={t='Sairui-Ran',tb="Toolbag (Sai)",tb_id=5317,ut="Chonofuda",utb="Toolbag (Cho)",utb_id=5869},
        ["Dokumori"]={t='Kodoku',tb="Toolbag (Kodo)",tb_id=5318,ut="Chonofuda",utb="Toolbag (Cho)",utb_id=5869},
        ["Tonko"]={t='Shinobi-Tabi',tb="Toolbag (Shino)",tb_id=5319,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Gekka"]={t='Ranka',tb="Toolbag (Ranka)",tb_id=6265,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Yain"]={t='Furusumi',tb="Toolbag (Furu)",tb_id=6266,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Myoshu"]={t='Kabenro',tb="Toolbg. (Kaben)",tb_id=5863,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Yurin"]={t='Jinko',tb="Toolbag (Jinko)",tb_id=5864,ut="Chonofuda",utb="Toolbag (Cho)",utb_id=5869},
        ["Kakka"]={t='Ryuno',tb="Toolbag (Ryuno)",tb_id=5865,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},
        ["Migawari"]={t='Mokujin',tb="Toolbag (Moku)",tb_id=5866,ut="Shikanofuda",utb="Toolbag (Shika)",utb_id=5868},}
combined_ammo = {
        ["Crude Arrow"]="Old Quiver",["Old Arrow"]="Rotten Quiver",["Stone Arrow"]="Stone Quiver",["Bone Arrow"]="Bone Quiver",["Beetle Arrow"]="Beetle Quiver",
        ["Horn Arrow"]="Horn Quiver",["Scorpion Arrow"]="Scorpion Quiver",["Demon Arrow"]="Demon Quiver",["Iron Arrow"]="Iron Quiver",["Silver Arrow"]="Silver Quiver",
        ["Kabura Arrow"]="Kabura Quiver",["Sleep Arrow"]="Sleep Quiver",["Antlion Arrow"]="Antlion Quiver",["Ruszor Arrow"]="Ruszor Quiver",
        ["Gargouille Arrow"]="Gargou. Quiver",["Chapuli Arrow"]="Chapuli Quiver",["Mantid Arrow"]="Mantid Quiver",["Achiyal. Arrow"]="Achiyal. Quiver",
        ["Adlivun Arrow"]="Adlivun Quiver",["Tulfaire Arrow"]="Tulfaire Quiver",["Raaz Arrow"]="Raaz Quiver",["Eminent Arrow"]="Eminent Quiver",
        ["Ra'Kaznar Arrow"]="Ra'Kaznar Quiver",["T.K. Arrow"]="T.K. Quiver",["Cmb.Cst. Arrow"]="Cmb.Cst. Quiver",["Dogbolt"]="Old Bolt Box",
        ["Irn.Msk. Bolt"]="Irn.Msk. Quiver",["Bronze Bolt"]="B. Bolt Quiver",["Mythril Bolt"]="M. Bolt Quiver",["Darksteel Bolt"]="D. Bolt Quiver",
        ["Blind Bolt"]="Bln. Bolt Quiver",["Acid Bolt"]="Ac. Bolt Quiver",["Holy Bolt"]="Hol. Bolt Quiver",["Sleep Bolt"]="Slp. Bolt Quiver",
        ["Venom Bolt"]="Vn. Bolt Quiver",["Bloody Bolt"]="Bld. Bolt Quiver",["Darkling Bolt"]="Dkl. Bolt Quiver",["Fusion Bolt"]="Fsn. Bolt Quiver",
        ["Drk. Adm. Bolt"]="D.A. Bolt Quiver",["Adaman Bolt"]="A. Bolt Quiver",["Midrium Bolt"]="Mid. Bolt Quiver",["Damascus Bolt"]="Dm. Bolt Quiver",
        ["Oxidant Bolt"]="O. Bolt Quiver",["Achiyal. Bolt"]="Al. Bolt Quiver",["Adlivun Bolt"]="Ad. Bolt Quiver",["Titanium Bolt"]="T. Bolt Quiver",
        ["Bismuth Bolt"]="Bi. Bolt Quiver",["Eminent Bolt"]="Em. Bolt Quiver",["Abrasion Bolt"]="Abr. Bolt Quiver",["Righteous Bolt"]="Rig. Bolt Quiver",
        ["Ra'Kaznar Bolt"]="Ra. Bolt Quiver",["Antique Bullet"]="Old Bullet Box",["Silver Bullet"]="Silv. Bul. Pouch",["Spartan Bullet"]="Spar. Bul. Pouch",
        ["Corsair Bullet"]="Cor. Bull. Pouch",["Iron Bullet"]="Iron Bull. Pouch",["Bronze Bullet"]="Brz. Bull. Pouch",["Bullet"]="Bullet Pouch",
        ["Steel Bullet"]="Stl. Bull. Pouch",["Dweomer Bullet"]="Dwm. Bul. Pouch",["Oberon's Bullet"]="Obr. Bull. Pouch",["Drk. Adm. Bullet"]="D.A. Bull. Pouch",
        ["Orichalc. Bullet"]="O. Bull. Pouch",["Adaman Bullet"]="A. Bull. Pouch",["Midrium Bullet"]="Mid. Bul. Pouch",["Damascus Bullet"]="Dm. Bul. Pouch",
        ["Achiyal. Bullet"]="Al. Bull. Pouch",["Adlivun Bullet"]="Ad. Bull. Pouch",["Titanium Bullet"]="Ti. Bull. Pouch",["Bismuth Bullet"]="Bi. Bull. Pouch",
        ["Eminent Bullet"]="Em. Bul. Pouch",["Ra'Kaznar Bullet"]="Ra. Bul. Pouch",}

    sets.ammo_empty = {ammo=empty,}
