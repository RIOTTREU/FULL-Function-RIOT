function SuperRefinement()
    SuperRefinement = gg.choice({
        'SuperRefinement [+9] ',
        'SuperRefinement [Qmax] ',
        'Back 🚪'
    },0,[[Program developer : RTM RIOT]])
    if SuperRefinement == 0 then
    else
        if SuperRefinement == 1 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%2B9/Main%20%2B9.lua').content)pcall(t)
        end
        if SuperRefinement == 2 then
            t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/SuperRefinement%20Qmax/Main%20Qmax.lua').content)pcall(t)
        end
        if SuperRefinement == 3 then
            t = load(gg.makeRequest('--').content)pcall(t)
        end
    end
end
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        SuperRefinement()
    end
end