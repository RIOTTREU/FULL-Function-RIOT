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
gg.clearResults()
gg.searchNumber("3000000",4)
gg.refineNumber("3000000",4)
R = gg.getResults(1)
RIOT(R[1].address + -44,4,true,"ONgame",999999999)
function qmax()
    SRQ = gg.choice({
        'Weapon [+9 & Qmax] ⚔️',
        'Kit [+9 & Qmax] 👚',
        'Additional [+9 & Qmax] 🎩',
        'Back 🚪'
    },0,[[Program developer : RTM RIOT]])
    if SRQ == 0 then
    else
        if SRQ == 1 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%20Qmax/Weapon%20Qmax.lua').content)pcall(t)
        end
        if SRQ == 2 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%20Qmax/Kit%20Qmax.lua').content)pcall(t)
        end
        if SRQ == 3 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%20Qmax/Additional%20Qmax.lua').content)pcall(t)
        end
        if SRQ == 4 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/main%20function/Main%20SuperRefinement.lua').content)pcall(t)
        end
    end
end
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        qmax()
    end
end
