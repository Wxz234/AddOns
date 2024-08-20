JoinPermanentChannel('大脚世界频道')
ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, "大脚世界频道")

-- 自动修理
local frame = CreateFrame("FRAME");
frame:RegisterEvent("MERCHANT_SHOW");
local function eventHandler(self, event, ...)
    if (CanMerchantRepair()) then
        repairAllCost, _canRepair = GetRepairAllCost();
        if (_canRepair and repairAllCost > 0) then
            RepairAllItems();
            print("修理成功")
        else
            print("不需要修理")
        end
    end
end
frame:SetScript("OnEvent", eventHandler);