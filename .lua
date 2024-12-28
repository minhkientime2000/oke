-- Khởi tạo cấu hình dựa trên JSON
getgenv().Config = {
    SpinSlotDropDown = "1",                  -- Dropdown chọn slot quay
    AutoPromote = true,                      -- Tự động thăng cấp
    AutoPickDro = false,                     -- Tự động nhặt vật phẩm rơi
    AutoNearme = false,                      -- Tự động gần mục tiêu
    ClaimChestt = true,                      -- Tự động nhận rương
    PickDrop = {"Talisman"},                 -- Vật phẩm cần nhặt
    AutoSpin = false,                        -- Tự động quay spin
    SpinDropDown = {"Infinity", "Demon Vessel"}, -- Danh sách vật phẩm quay
    QuestSelect = "4 Cursed Spirits",        -- Nhiệm vụ được chọn
    KillAura = false,                        -- Kích hoạt Kill Aura
    KillAurMethod = "OneShot",               -- Phương pháp Kill Aura
    M1stack = false,                         -- Chế độ M1 stack
    AutoMission = true,                      -- Tự động làm nhiệm vụ
    LootSetd = "Yuki Fortress Set"           -- Bộ vật phẩm loot
}

-- Thực hiện các hành động dựa trên cấu hình
local function executeConfigActions()
    if getgenv().Config.AutoPromote then
        print("Đang thăng cấp tự động...")
        -- Thêm mã thăng cấp tự động tại đây
    end
    
    if getgenv().Config.ClaimChestt then
        print("Đang nhận rương tự động...")
        -- Thêm mã nhận rương tại đây
    end
    
    if getgenv().Config.AutoMission then
        print("Đang làm nhiệm vụ tự động...")
        -- Thêm mã làm nhiệm vụ tự động tại đây
    end
    
    if getgenv().Config.KillAura then
        print("Đang kích hoạt Kill Aura với phương pháp: " .. getgenv().Config.KillAurMethod)
        -- Thêm mã xử lý Kill Aura tại đây
    end
end

-- Hiển thị cấu hình
for key, value in pairs(getgenv().Config) do
    if type(value) == "table" then
        print(key .. ": " .. table.concat(value, ", "))
    else
        print(key .. ": " .. tostring(value))
    end
end

-- Thực hiện các hành động
executeConfigActions()

-- Tải script từ URL
