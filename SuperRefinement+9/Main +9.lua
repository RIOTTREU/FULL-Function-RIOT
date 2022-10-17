function RIOTOC(address,flags,freeze,name,value)
    RTOL = {}
    RTOL[1] = {}
    RTOL[1].address = address
    RTOL[1].flags = flags
    RTOL[1].value = value
    RTOL[1].freeze = freeze
    RTOL[1].name = name
    gg.setValues(RTOL)
    gg.addListItems(RTOL)
end
function RIOT(address,flags,freeze,name,value)
    RTOL = {}
    RTOL[1] = {}
    RTOL[1].address = address
    RTOL[1].flags = flags
    RTOL[1].value = value
    RTOL[1].freeze = freeze
    RTOL[1].name = name
    gg.setValues(RTOL)
    gg.addListItems(RTOL)
    gg.clearResults(RTOL)
end
function RTM(address,flags,value,freeze,freezeFrom,freezeTo,name)
    p = {}
    p[1] = {}
    p[1].address = address
    p[1].flags = flags
    p[1].value = value
    p[1].freeze = freeze
    p[1].freezeType = gg.FREEZE_IN_RANGE
    p[1].freezeFrom = freezeFrom
    p[1].freezeTo = freezeTo
    p[1].name = name
    gg.setValues(p)
    gg.addListItems(p)
    gg.clearResults(p)
end
gg.clearResults()
gg.searchNumber("3000000",4)
gg.refineNumber("3000000",4)
R = gg.getResults(1)
RIOT(R[1].address + -44,4,true,"ONgame",999999999)
function SR9()
    SR = gg.choice({
        'Weapon [+9] ⚔️',
        'Kit [+9] 👚',
        'Additional [+9] 🎩',
        'Back 🚪'
    },0,[[Program developer : RTM RIOT]])
    if SR == 0 then
    else
        if SR == 1 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%2B9/Weapon%20%2B9.lua').content)pcall(t)
        end
        if SR == 2 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%2B9/Kit%20%2B9.lua').content)pcall(t)
        end
        if SR == 3 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%2B9/Additional%20%2B9.lua').content)pcall(t)
        end
        if SR == 4 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/main%20function/Main%20SuperRefinement.lua').content)pcall(t)
        end
    end
end
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        SR9()
    end
end