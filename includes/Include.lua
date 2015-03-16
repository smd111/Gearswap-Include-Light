--Saved Variable Recovery ---------------------------------------------------------------------------------------------------------
if gearswap.pathsearch({'includes/map.lua'}) then
    include('includes/map.lua')
else
    add_to_chat(7,"Must Have includes/map.lua To Use This Include")
    return
end
if gearswap.pathsearch({'Saves/job_'..player.main_job..'var.lua'}) then
    include('Saves/job_'..player.main_job..'var.lua')
end
----Include functions-------------------------------------------------------------------------------------------------------------
function gear_equip()
    set_gear = {}
    if sets.weapon[weapon_types[weapon_types_count]] then
        set_gear = set_combine(set_gear, sets.weapon[weapon_types[weapon_types_count]])
    end
    if sets.range[range_types[range_types_count]] then
        set_gear = set_combine(set_gear, sets.range[range_types[range_types_count]])
    end
    if sets.armor[armor_types[armor_types_count]] then
        set_gear = set_combine(set_gear, sets.armor[armor_types[armor_types_count]])
    end
    return set_gear
end
function run_event(event_type,a)
    for i, v in ipairs({"Conquest_Gear_","extra_","MSi_","mf_"}) do
        if _G[v..''..event_type] then
             _G[v..''..event_type](a,event_type)
        end
    end
end
function add_gear_modes(a,b)
    for i, v in pairs(a) do
        _G[b]:append(v)
    end
end
----Gearswap basic functions------------------------------------------------------------------------------------------------------
function get_sets()
    gear_setup()
    if add_armor_modes then
        add_gear_modes(add_armor_modes,'armor_types')
    end
    if add_weapon_modes then
        add_gear_modes(add_weapon_modes,'weapon_types')
    end
    if add_range_modes then
        add_gear_modes(add_range_modes,'range_types')
    end
end
function self_command(command)
    local commandArgs = command
    if type(commandArgs) == 'string' and #commandArgs:split(' ') >= 2 then
        commandArgs = T(commandArgs:split(' '))
    end
    run_event("self_command",commandArgs)
    if File_Write_do then
        File_Write_do()
    end
end
----Include equip------------------------------------------------------------------------------------------------------------------
function WS_equip(spell)
    set_gear = {}
    if player.inventory["Fotia Gorget"] or player.wardrobe["Fotia Gorget"] then
        set_gear = set_combine(set_gear, {neck="Fotia Gorget"})
    else
        set_gear = set_combine(set_gear, sets.ws_neck[spell.element])
    end
    if player.inventory["Fotia Belt"] or player.wardrobe["Fotia Belt"] then
        set_gear = set_combine(set_gear, {neck="Fotia Belt"})
    else
        set_gear = set_combine(set_gear, sets.ws_belt[spell.element])
    end
    set_gear = set_combine(set_gear, sets.WS_types[spell.skill])
    return set_gear
end
function OBI_equip(spell)
    set_gear = {}
    if player.inventory["Hachirin-no-Obi"] or player.wardrobe["Hachirin-no-Obi"] then
        set_gear = set_combine(set_gear, {waist="Hachirin-no-Obi"})
    else
        set_gear = set_combine(set_gear, sets.spell_obi[spell.element])
    end
    return set_gear
end
function MSi_do(spell,staff_type)
    if staff_type == "Cure" and spell.skill == "Healing Magic" then
        return sets.staff[staff_type]
    end
    return sets.staff[staff_type][spell.element]
end
function Conquest_do(con_typ)
    set_gear = {}
    if has_any_buff_of(S{"Signet","Sanction","Sigil"}) then
        if Conquest.always:contains(world.area) then
            set_gear = set_combine(set_gear, Conquest.neck[con_typ])
            if not Conquest.no_ring:contains(world.area) then
                set_gear = set_combine(set_gear, Conquest.ring[con_typ])
            end
        elseif not Conquest.never:contains(world.area) then
            if world.conquest.nation == player.nation then
                set_gear = set_combine(set_gear, Conquest.ring[con_typ])
            else
                set_gear = set_combine(set_gear, Conquest.neck[con_typ])
            end
        end
    end
    return set_gear
end
--extra functions-----------------------------------------------------------------------------------------------------------------
function extra_self_command(command)
    if type(command) == 'table' then
        if command[1]:lower() == 'set' or command[1]:lower() == 's' then
            if _G[command[2]:lower()..'_types'] then
                for i,v in pairs(_G[command[2]:lower()..'_types']) do
                    if tostring(v):lower() == command[3]:lower() then
                        _G[command[2]:lower()..'_types_count'] = i
                        add_to_chat(7, '----- '..command[2]:lower()..' set to '.._G[command[2]:lower()..'_types'][_G[command[2]:lower()..'_types_count']]..' -----')
                    end
                end
            end
        end
    end
end
-- added events--
function Registered_Events_zone_change(new_id,old_id)
    local new = res.zones[new_id].name
    local old = res.zones[old_id].name
    coroutine.sleep(3)
    if zone_change then
        zone_change(new,old)
    end
end
Registered_Events_zone_change_id = windower.raw_register_event('zone change', Registered_Events_zone_change)
--File Write
function File_Write_do()
    if not windower.dir_exists(lua_base_path..'data/'..player.name) then
        windower.create_dir(lua_base_path..'data/'..player.name)
    end
    if not windower.dir_exists(lua_base_path..'data/'..player.name..'/Saves') then
        windower.create_dir(lua_base_path..'data/'..player.name..'/Saves')
    end
    local file = io.open(lua_base_path..'data/'..player.name..'/Saves/job_'..player.main_job..'var.lua',"w")
    file:write('weapon_types_count = '..tostring(weapon_types_count)..'\nrange_types_count = '..tostring(range_types_count)..
    '\ngear_mode_count = '..tostring(gear_mode_count)..'')
    file:close()
end
if File_Write_do then
    File_Write_do()
end
--has buff function---------------------------------------------------------------------------------------------------------------
function has_any_buff_of(buff_set)
    for i,v in pairs(buff_set) do if buffactive[v] ~= nil then return true end end
end
function nin_tool_check(typ,spell)
    if (player.inventory[nin_tools[typ].t] == nil  or player.inventory[nin_tools[typ].ut] == nil) 
    and (player.inventory[nin_tools[typ].tb] ~= nil or player.inventory[nin_tools[typ].utb] ~= nil) then
        return true
    elseif (player.inventory[nin_tools[typ].t] == nil  or player.inventory[nin_tools[typ].ut] == nil) 
    and (player.inventory[nin_tools[typ].tb] == nil or player.inventory[nin_tools[typ].utb] == nil) then
        add_to_chat(7,"No Tools Available To Cast "..spell.name)
    end
end
function nin_tool_open(typ)
    if player.inventory[nin_tools[typ].tb] ~= nil then
        return nin_tools[typ].tb
    elseif player.inventory[nin_tools[typ].utb] ~= nil then
        return nin_tools[typ].utb
    end
end
function NIN_do(spell)
    if spell.type == "Ninjutsu" then
        local typ = string.match(spell.en, '(%a+): %a+')
        if nin_tool_check(typ,spell) then
            send_command('input /item "'..nin_tool_open(typ)..'" <me>')
            return true
        end
    end
end
function COR_card_getmore(typ)
    local c_case = typ.." Card Case"
    local t_case = "Trump Card Case"
    if player.inventory[c_case] ~= nil then
        return c_case
    elseif player.inventory[t_case] ~= nil then
        return t_case
    end
end
function COR_card_check(typ)
    if (player.inventory[typ.." Card"] == nil or player.inventory["Trump Card"] == nil) 
        and (player.inventory[typ.." Card Case"] ~= nil or player.inventory["Trump Card Case"] ~= nil ) then
        return true
    end
end
function COR_do(spell)
    if spell.type == "CorsairShot" then
        local typ = string.match(spell.en, '(%a+) Shot')
        if COR_card_check(typ) then
            send_command('input /item "'..COR_card_getmore(typ)..'" <me>')
        elseif not COR_card_check(typ) then
            add_to_chat(7,"No Cards Available To Cast "..spell.name)
        end
    end
end
function AMMO_check()
    if player.inventory[combined_ammo[sets[player.status].ammo]] and player.inventory[sets[player.status].ammo] == nil then
        return true
    end
end
function AMMO_reequip()
    if player.inventory[combined_ammo[sets[player.status].ammo]] ~= nil then
        return combined_ammo[sets[player.status].ammo]
    end
end
function AMMO_do(spell)
    if spell.english == "Ranged" and AMMO_check() then
        equip(sets.ammo_empty)
        send_command('input /item "'..AMMO_reequip()..'" <me>')
    end
end