local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("item/元宝")
require("item/物品通用")
require("item/sy_悟道丹")
require("item/dddd五福卡")
require("system/serializer")

local itemList = {
		"dddd五福卡",
		"100元宝",
		"dddd经验丹10",
		"强化材料"
		}

function main( player, item )
    if lualib:GetBagFree(player) < 4 then
        lualib:MsgBox(player, "背包空间不足4格，请先整理背包!!!")
        return ""
    end

    local amount = lualib:Item_GetAmount("", item) 
    if amount > 1 then
        if not lualib:Item_SetAmount("", item, amount - 1) then 
            lualib:MsgBox(player, "使用失败!!!")
            return false
        end
    else
        if not lualib:Item_Destroy(player, item, item.. "使用，扣除", player) then
            lualib:MsgBox(player, "使用失败!!!")
            return false
        end
    end

    for i=1,#itemList do
        if lualib:AddItem(player, itemList[i], 1, false, item .. "，使用", player) then
        end
    end
end
