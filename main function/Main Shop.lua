function mainstore()
    store = choice({
        '➢ [SET] Function Store 🔁',
        '➢ [On] Store 🛍️',
        '➢ Back 🚪'
    },0,"Program developer : RTM RIOT\nIRUNA ONLINE TH & IRUNA ONLINE EN")
    if store == 0 then
    else
        if store == 1 then
            t = load(gg.makeRequest('').content)pcall(t)
        end
        if store == 2 then
            t = load(gg.makeRequest('').content)pcall(t)
        end
        if store == 3 then
            t = load(gg.makeRequest('').content)pcall(t)
        end
    end
end
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        main()
    end
end