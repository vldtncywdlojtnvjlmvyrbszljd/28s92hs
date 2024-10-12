local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Fungsi untuk memilih tim
local function selectTeam()
    -- Ganti "TeamChoiceGui" dengan nama GUI pemilihan tim yang sebenarnya
    local teamGui = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("TeamChoiceGui")
    
    -- Ganti "Pirates" dengan nama tim yang Anda inginkan
    local desiredTeam = "Pirates"
    
    -- Cari tombol untuk tim yang diinginkan
    local teamButton = teamGui:FindFirstChild(desiredTeam)
    
    if teamButton then
        -- Klik tombol tim
        local args = {
            [1] = "ChooseTeam",
            [2] = desiredTeam
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    else
        warn("Tombol tim tidak ditemukan!")
    end
end

-- Fungsi yang dijalankan saat pemain bergabung dengan game
local function onPlayerAdded(player)
    if player == LocalPlayer then
        -- Tunggu hingga karakter pemain dimuat
        player.CharacterAdded:Wait()
        
        -- Tunggu sebentar untuk memastikan GUI pemilihan tim telah dimuat
        wait(2)
        
        -- Pilih tim
        selectTeam()
    end
end

-- Hubungkan fungsi ke event PlayerAdded
Players.PlayerAdded:Connect(onPlayerAdded)

-- Jika pemain sudah ada di game, jalankan fungsi langsung
if LocalPlayer.Character then
    onPlayerAdded(LocalPlayer)
end
