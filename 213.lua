local itemList = {
    "dddd������",
    "dddd���ƿ�",
    "dddd��ǿ��",
    "dddd��г��",
    "dddd��ҵ��"
}

function main(player, item)
    local name = lualib:KeyName(item)
    for i=1,#itemList do
        if itemList[i] == name then
            if i==1 then
                if lualib:AddItem(player,"����6",10,false,"ʹ�ð�����",player) then
                    lualib:SysWarnMsg(player, "��þ���6")
                    return true
                end
            end
            if i==2 then
                if lualib:AddBuff(player, "����ӳ�10%", 86400) then
                    lualib:SysWarnMsg(player, "����ӳ�10%")
                    return true
                end
            end
            if i==3 then
                if lualib:AddBuff(player, "��ͼ����", 86400) then
                    lualib:SysWarnMsg(player, "��������10%")
                    return true
                end
            end
            if i==4 then
                if lualib:AddBuff(player, "��������ȫ����8", 86400) then
                    lualib:SysWarnMsg(player, "ȫ��������")
                    return true
                end
            end
            if i==5 then
                if lualib:AddItem(player,"���鵤18",2,false,"ʹ�þ�ҵ��",player) and lualib:AddItem(player,"��Ϊ��9",10,false,"ʹ�þ�ҵ��",player) then
                    lualib:SysWarnMsg(player, "��á����鵤18��2��,����Ϊ��9��10��")
                    return true
                end
            end

        end
    end
end