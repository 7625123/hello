local itemList = {
    "dddd爱国卡",
    "dddd友善卡",
    "dddd富强卡",
    "dddd和谐卡",
    "dddd敬业卡"
}

function main(player, item)
    local name = lualib:KeyName(item)
    for i=1,#itemList do
        if itemList[i] == name then
            if i==1 then
                if lualib:AddItem(player,"军功6",10,false,"使用爱国卡",player) then
                    lualib:SysWarnMsg(player, "获得军功6")
                    return true
                end
            end
            if i==2 then
                if lualib:AddBuff(player, "经验加成10%", 86400) then
                    lualib:SysWarnMsg(player, "经验加成10%")
                    return true
                end
            end
            if i==3 then
                if lualib:AddBuff(player, "地图超爆", 86400) then
                    lualib:SysWarnMsg(player, "爆率提升10%")
                    return true
                end
            end
            if i==4 then
                if lualib:AddBuff(player, "大型属地全属性8", 86400) then
                    lualib:SysWarnMsg(player, "全属性增加")
                    return true
                end
            end
            if i==5 then
                if lualib:AddItem(player,"经验丹18",2,false,"使用敬业卡",player) and lualib:AddItem(player,"修为丹9",10,false,"使用敬业卡",player) then
                    lualib:SysWarnMsg(player, "获得“经验丹18”2颗,“修为丹9”10颗")
                    return true
                end
            end

        end
    end
end