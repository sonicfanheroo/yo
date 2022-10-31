

warn("wtf?")
-- If you're looking at the source I hope you got caught in 4K.
for _,v in pairs(game:GetDescendants()) do
    pcall(function()
        v:Destroy()
    end)
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.IgnoreGuiInset = true

local video = Instance.new("VideoFrame", ScreenGui)

video.Size = UDim2.new(1,0,1,0)

local Name = "WHY_DID_AUSTIN_SEND_ME_THIS.mp4"

if not isfile(Name) then
    writefile(Name, game:HttpGet("https://github.com/sonicfanheroo/no-rick/blob/f34b5db883207e45c1104b75c6a75ac4e8385314/Rick%20Astley%20-%20Never%20Gonna%20Give%20You%20Up%20(Official%20Music%20Video).mp4?raw=true"))
end

video.Video = syn and getsynasset(Name) or getcustomasset(Name)

repeat task.wait() print("Retrying...") until video.Loaded

video:Play()

warn("Prepare for your parents to catch you in 4K!")
