
-- Script thay đổi bầu trời - RedDung0411
local Lighting = game:GetService("Lighting")
local sky = Lighting:FindFirstChild("Sky") or Instance.new("Sky", Lighting)

local assetId = "rbxassetid://81882138179294" -- ID ảnh của bạn

sky.SkyboxBk = assetId
sky.SkyboxDn = assetId
sky.SkyboxFt = assetId
sky.SkyboxLf = assetId
sky.SkyboxRt = assetId
sky.SkyboxUp = assetId

print("Đã load Sky Mod thành công!")
