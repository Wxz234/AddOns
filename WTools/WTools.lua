JoinPermanentChannel('大脚世界频道')
ChatFrame_AddChannel(DEFAULT_CHAT_FRAME, "大脚世界频道")

-- 自动修理
local frame = CreateFrame("FRAME");
frame:RegisterEvent("MERCHANT_SHOW");
local function eventHandler(self, event, ...)
	RepairAllItems()
end
frame:SetScript("OnEvent", eventHandler);