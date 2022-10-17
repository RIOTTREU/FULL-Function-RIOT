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
gg.searchNumber("11001~20008;0~255;-1::9",4)
gg.refineNumber("11001~20008",4)
N = gg.getResults(1)
RIOT(N[1].address +  224,4,true,nil,16777216)
gg.searchNumber("0;0;-1;0;-1;10::21",4)
gg.refineNumber('-1',4)
C = gg.getResults(1)
Kuta=0
function WeaponQmax()
    while true do
        if Kuta > 9 then 
            sleep(200)
            RIOT(N[1].address + -116,4,false,nil,-1) sleep(400) RIOTOC(N[1].address + -116,4,false,nil,0) sleep(400)
            sleep(500)
            RIOTOC(C[1].address + 0,4,false,nil,0) sleep(500)
            RIOTOC(C[1].address + 0,4,false,nil,0) sleep(500)
            RIOTOC(C[1].address + 0,4,false,nil,0) sleep(500)
            RIOTOC(C[1].address + 0,4,false,nil,0) sleep(2000)
            Kuta = 0
        end
        RIOTOC(N[1].address + -116,4,false,nil,-1) sleep(400) RIOTOC(N[1].address + -116,4,false,nil,0) sleep(400)
        RIOTOC(C[1].address + 0,4,false,nil,0) sleep(500)
        RIOTOC(C[1].address + 0,4,false,nil,1) sleep(500)
        RIOTOC(C[1].address + 0,4,false,nil,0) sleep(500)
        RIOTOC(C[1].address + 0,4,false,nil,0) sleep(500)
        RIOTOC(C[1].address + 0,4,false,nil,0) sleep(2000)
        Kuta = Kuta+1
    end
end