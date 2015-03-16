--include setup -------------------------------------------------------------------------------------------------------------------
include('includes/Include.lua')
--Job functions
function gear_setup()
    ---------------------------------------
    -- add more weapon modes with this add_weapon_modes = {'name1','name2'}
    -- called with armor_types[armor_types_count]
    -- 'Axe, Club, Dagger, Great_Axe, Great_Sword, Hand-to-Hand, Polearm, Scythe, Staff, Sword, Great_Katana, Katana, Reserve, None are already included
    -- if you dont plan on using it remove or comment out
    ---------------------------------------
    sets.weapon['Axe'] = {main="",sub="",}
    -- sets.weapon['Club'] = {main="",sub="",}
    -- sets.weapon['Dagger'] = {main="",sub="",}
    -- sets.weapon['Great_Axe'] = {main="",sub="",}
    -- sets.weapon['Great_Sword'] = {main="",sub="",}
    -- sets.weapon['Hand-to-Hand'] = {main="",sub="",}
    -- sets.weapon['Great_Katana'] = {main="",sub="",}
    -- sets.weapon['Katana'] = {main="",sub="",}
    -- sets.weapon['Polearm'] = {main="",sub="",}
    -- sets.weapon['Scythe'] = {main="",sub="",}
    -- sets.weapon['Staff'] = {main="",sub="",}
    -- sets.weapon['Sword'] = {main="",sub="",}
    -- sets.weapon['Reserve'] = {main="",sub="",}
    sets.weapon['None'] = {main=empty,sub=empty,}
    ---------------------------------------
    -- add more range modes with this add_range_modes = {'name1','name2'}
    -- called with range_types[range_types_count]
    -- Archery, Marksmanship, Throwing, Fishing, Soultrapper, Wind_Instruments, String_Instruments, Handbells, Other are already included
    -- if you dont plan on using it remove or comment out
    ---------------------------------------
    -- sets.range['Archery'] = {range="",ammo="",}
    -- sets.range['Marksmanship'] = {range="",ammo="",}
    sets.range['Throwing'] = {range="Chakram",ammo=empty,}
    -- sets.range['Fishing'] = {range="",ammo="",}
    -- sets.range['Soultrapper'] = {range="",ammo="",}
    -- sets.range['Wind Instruments'] = {range="",ammo="",}
    -- sets.range['String Instruments'] = {range="",ammo="",}
    -- sets.range['Handbells'] = {range="",ammo="",}
    -- sets.range['Other'] = {range="",ammo="",}
    ---------------------------------------
    -- add more armor modes with this add_armor_modes = {'name1','name2'}
    -- called with armor_types[armor_types_count]
    -- Basic is already included
    -- if you dont plan on using it remove or comment out
    ---------------------------------------
    sets.armor['Basic'] = {} -- do not change this
    ---------------------------------------
    -- these are your base sets put in your
    -- default sets for status idle/resting
    -- engaged (these must be here)
    ---------------------------------------
    sets.Engaged = {
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="",
        right_ear="",
        left_ring="",
        right_ring="",
        back="",
    }
    sets.Idle = {
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="",
        right_ear="",
        left_ring="",
        right_ring="",
        back="",
    }
    sets.Resting = {
        head="",
        body="",
        hands="",
        legs="",
        feet="",
        neck="",
        waist="",
        left_ear="",
        right_ear="",
        left_ring="",
        right_ring="",
        back="",
    }
    ---------------------------------------
    --put your other sets here
    ---------------------------------------
end
function file_unload(new_job)
end
function status_change(new,old)
end
function pet_change(pet,gain)
end
function filtered_action(spell)
end
function pretarget(spell)
end
function precast(spell)
end
function buff_change(name,gain,buff_table)
end
function midcast(spell)
end
function pet_midcast(spell)
end
function aftercast(spell)
end
function pet_aftercast(spell)
end
function mf_self_command(command)
    ---------------------------------------
    --put your self_command rules here
    ---------------------------------------
    if type(command) == 'table' then
        if command[1]:lower() == 'set' or command[1]:lower() == 's' then
            --put commands that you want to the set command for example: gs c s stepmax 3 note: changes the variable directly to what you want
            --example code:
            -- if command[2]:lower() == 'stepmax' then
                -- Stepmax = tonumber(command[3])
                -- add_to_chat(7,'Max step = ' ..Stepmax)
            -- end
        elseif command[1]:lower() == 'cycle' or command[1]:lower() == 'c' then
            --put commands that you want to the cycle command for example: gs c c stepmax note: for cycling through all posible variables
            --example code:
            -- if command[2]:lower() == 'stepmax' then
                -- Stepmax = (Stepmax % 5) + 1
                -- add_to_chat(7,'Max step = ' ..Stepmax)
            -- end
        elseif command[1]:lower() == 'toggle' or command[1]:lower() == 't' then
            --put commands that you want to the toggle command for example: gs c t stopsteps note: onle needed fot true/false variable
            --example code:
            -- if command == 'stopsteps' then
                -- Stopsteps = not Stopsteps
                -- add_to_chat(7, '----- Steps Will ' .. (Stopsteps and '' or 'Not ') .. 'Stop -----')
            -- end
        end
    else
        --put all other commands here example: gs c tstopsteps note: this is for single string commands
        --example code:
        -- if command == 'tstopsteps' then
            -- Stopsteps = not Stopsteps
            -- add_to_chat(7, '----- Steps Will ' .. (Stopsteps and '' or 'Not ') .. 'Stop -----')
        -- end
    end
end
function sub_job_change(new,old)
    ---------------------------------------
    --put your sub_job_change rules here
    ---------------------------------------
end
function indi_change(indi_table,gain) -- only needed for Geo main/sub jobs
    ---------------------------------------
    --put your indi_change rules here
    ---------------------------------------
end
function zone_change(new,old) -- only when Registered_Events include is active
    ---------------------------------------
    --put your zone_change rules here
    --new string name of the new zone
    --old string name of the old zone
    ---------------------------------------
end