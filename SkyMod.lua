-- Script thay đổi bầu trời - RedDung0411
local Lighting = game:GetService("Lighting")
local assetId = "rbxassetid://81882138179294" -- ID ảnh của bạn

print("Đang bắt đầu load Sky Mod...")

-- Sử dụng task.spawn để chạy vòng lặp không làm treo game
task.spawn(function()
    while true do
        local sky = Lighting:FindFirstChild("Sky") or Instance.new("Sky", Lighting)
        
        -- Chỉ set lại nếu chưa đúng ID để tránh spam bộ nhớ
        if sky.SkyboxBk ~= assetId then
            sky.SkyboxBk = assetId
            sky.SkyboxDn = assetId
            sky.SkyboxFt = assetId
            sky.SkyboxLf = assetId
            sky.SkyboxRt = assetId
            sky.SkyboxUp = assetId
        end
        
        task.wait(1) -- Cứ mỗi 1 giây kiểm tra và ép lại một lần
    end
end)

print("Đã load Sky Mod thành công!")
