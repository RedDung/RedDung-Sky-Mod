-- Script Menu Mod Sky - RedDung0411
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RedDung0411 | Sky Mod",
   LoadingTitle = "Đang khởi tạo...",
   LoadingSubtitle = "Mod Bầu trời",
   Theme = "Default",
})

local Tab = Window:CreateTab("Sky Settings", 4483362456) -- Icon tab
local Section = Tab:CreateSection("Công cụ Mod Sky")

local assetId = "rbxassetid://81882138179294" -- ID ảnh của bạn

Tab:CreateButton({
   Name = "Kích hoạt Bầu trời Custom",
   Callback = function()
      local Lighting = game:GetService("Lighting")
      -- Xóa Sky cũ
      for _, v in pairs(Lighting:GetChildren()) do
         if v:IsA("Sky") then v:Destroy() end
      end
      -- Tạo Sky mới
      local newSky = Instance.new("Sky", Lighting)
      newSky.SkyboxBk = assetId
      newSky.SkyboxDn = assetId
      newSky.SkyboxFt = assetId
      newSky.SkyboxLf = assetId
      newSky.SkyboxRt = assetId
      newSky.SkyboxUp = assetId
      
      Rayfield:Notify({
         Title = "Thành công!",
         Content = "Đã thay đổi bầu trời thành công.",
         Duration = 5,
      })
   end,
})

Tab:CreateButton({
   Name = "Reset về mặc định",
   Callback = function()
      game:GetService("Lighting"):ClearAllChildren()
      Rayfield:Notify({
         Title = "Đã reset",
         Content = "Đã xóa các tùy chỉnh bầu trời.",
         Duration = 5,
      })
   end,
})
