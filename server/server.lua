ESX = exports['es_extended']:getSharedObject()

local function ageFdp(dob)
    local dobSplit = string.split(dob, '/')
    local birthYear, birthMonth, birthDay = tonumber(dobSplit[3]), tonumber(dobSplit[1]), tonumber(dobSplit[2])
    local currentYear, currentMonth, currentDay = tonumber(os.date('%Y')), tonumber(os.date('%m')), tonumber(os.date('%d'))
    
    local age = currentYear - birthYear
    if (currentMonth < birthMonth) or (currentMonth == birthMonth and currentDay < birthDay) then
        age = age - 1
    end
    
    return age
end

function string.split(inputstr, sep)
    sep = sep or '%s'
    local t = {}
    for str in string.gmatch(inputstr, '([^' .. sep .. ']+)') do
        table.insert(t, str)
    end
    return t
end

ESX.RegisterServerCallback('player:fetchInformations', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    exports.oxmysql:fetch('SELECT firstname, lastname, dateofbirth FROM users WHERE identifier = ?', {xPlayer.identifier}, function(result)
        if result[1] then
            local name = result[1].firstname .. ' ' .. result[1].lastname
            local age = ageFdp(result[1].dateofbirth)
            cb({name = name, age = age})
        else
            cb({name = "Inconnu", age = "Inconnu"})
        end
    end)
end)
