-- RedDung0411 Hub | Sky & Utility (Update v2)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RedDung0411 Hub",
   LoadingTitle = "Đang khởi tạo Mod...",
   LoadingSubtitle = "by RedDung0411",
   Theme = "Default",
})

local MainTab = Window:CreateTab("Sky Mod", 4483362456)
local MiscTab = Window:CreateTab("Misc", 4483362456)

local assetId = "rbxassetid://84412922438354" -- ID ảnh của bạn

-- Biến để lưu trữ đối tượng GUI
local SkyGui = nil

MainTab:CreateSection("Cấu hình Bầu trời (Screen Overlay)")

MainTab:CreateToggle({
   Name = "Bật ảnh nền Custom",
   CurrentValue = false,
   Callback = function(Value)
      if Value then
         -- Tạo GUI phủ toàn màn hình
         SkyGui = Instance.new("ScreenGui", game.CoreGui)
         SkyGui.Name = "SkyImageGui"
         SkyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

         local ImageLabel = Instance.new("ImageLabel", SkyGui)
         ImageLabel.Size = UDim2.new(1, 0, 1, 0)
         ImageLabel.BackgroundTransparency = 1
         ImageLabel.Image = assetId
         ImageLabel.ScaleType = Enum.ScaleType.Fit -- Giữ đúng tỉ lệ ảnh
         ImageLabel.ZIndex = -1 -- Đẩy xuống dưới menu
         
         Rayfield:Notify({Title = "Đã bật", Content = "Ảnh nền đã được hiển thị!", Duration = 3})
      else
         -- Xóa GUI khi tắt
         if SkyGui then
            SkyGui:Destroy()
            SkyGui = nil
            Rayfield:Notify({Title = "Đã tắt", Content = "Đã xóa ảnh nền.", Duration = 3})
         end
      end
   end,
})

MiscTab:CreateSection("Công cụ hỗ trợ")

MiscTab:CreateButton({
   Name = "Reset UI",
   Callback = function()
      if SkyGui then SkyGui:Destroy() end
      Rayfield:Notify({Title = "Đã reset", Content = "Đã dọn dẹp các layer ảnh.", Duration = 3})
   end,
})
