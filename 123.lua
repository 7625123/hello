local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("item/Ԫ��")
require("item/��Ʒͨ��")
require("item/sy_�����")
require("item/dddd�帣��")
require("system/serializer")

local itemList = {
		"dddd�帣��",
		"100Ԫ��",
		"dddd���鵤10",
		"ǿ������"
		}

function main( player, item )
    if lualib:GetBagFree(player) < 4 then
        lualib:MsgBox(player, "�����ռ䲻��4������������!!!")
        return ""
    end

    local amount = lualib:Item_GetAmount("", item) 
    if amount > 1 then
        if not lualib:Item_SetAmount("", item, amount - 1) then 
            lualib:MsgBox(player, "ʹ��ʧ��!!!")
            return false
        end
    else
        if not lualib:Item_Destroy(player, item, item.. "ʹ�ã��۳�", player) then
            lualib:MsgBox(player, "ʹ��ʧ��!!!")
            return false
        end
    end

    for i=1,#itemList do
        if lualib:AddItem(player, itemList[i], 1, false, item .. "��ʹ��", player) then
        end
    end
end
