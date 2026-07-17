-- RedDung0411 Hub | Sky & Utility
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RedDung0411 Hub",
   LoadingTitle = "Đang khởi tạo Mod...",
   LoadingSubtitle = "by RedDung0411",
   Theme = "Default",
})

-- Tạo các TAB (giống giao diện các Hub lớn)
local MainTab = Window:CreateTab("Sky Mod", 4483362456)
local MiscTab = Window:CreateTab("Misc", 4483362456)

-- Phần Sky Mod (Tab Main)
local SkySection = MainTab:CreateSection("Cấu hình Bầu trời")

local assetId = "rbxassetid://81882138179294"

MainTab:CreateToggle({
   Name = "Bật bầu trời Custom",
   CurrentValue = false,
   Callback = function(Value)
      local Lighting = game:GetService("Lighting")
      if Value then
         local sky = Lighting:FindFirstChild("Sky") or Instance.new("Sky", Lighting)
         sky.SkyboxBk = assetId
         sky.SkyboxDn = assetId
         sky.SkyboxFt = assetId
         sky.SkyboxLf = assetId
         sky.SkyboxRt = assetId
         sky.SkyboxUp = assetId
         Rayfield:Notify({Title = "Đã bật", Content = "Bầu trời đã thay đổi!", Duration = 3})
      else
         for _, v in pairs(Lighting:GetChildren()) do
            if v:IsA("Sky") then v:Destroy() end
         end
         Rayfield:Notify({Title = "Đã tắt", Content = "Đã xóa bầu trời custom.", Duration = 3})
      end
   end,
})

-- Phần Misc (Tab phụ)
local ToolsSection = MiscTab:CreateSection("Công cụ hỗ trợ")

MiscTab:CreateButton({
   Name = "In thông tin Sky ra Console",
   Callback = function()
      local s = game.Lighting:FindFirstChild("Sky")
      print(s and "Sky đang tồn tại" or "Không tìm thấy Sky")
   end,
})
