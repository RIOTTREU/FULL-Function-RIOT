function on()
    clear()
    search("11001~20008;0~255;-1::9",4)
    refine("11001~20008",4)
    on = Results(1)
    RIOT(on[1].address + -96,4,false,"map_info",2)
    RIOT(on[1].address + 216,4,false,"tt",16842752)
    t = load(gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/FULL-Function-RIOT/main/main%20function/Main%20Shop.lua').content)pcall(t)
end