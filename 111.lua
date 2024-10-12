-- Fungsi untuk memilih tim secara acak
local function pilihTimSecaraAcak()
    local teams = {"Pirates", "Marines"} -- Pilihan tim
    local randomIndex = math.random(1, #teams) -- Memilih index acak
    return teams[randomIndex]
end

-- Fungsi untuk menghubungkan pemain ke tim secara otomatis
local function joinTeam()
    local team = pilihTimSecaraAcak()
    if team == "Pirates" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SelectTeam", "Pirates")
    elseif team == "Marines" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SelectTeam", "Marines")
    end
end

-- Otomatis menjalankan join saat karakter di-load
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        wait(1) -- Menunggu sedikit sebelum memilih tim
        joinTeam() -- Memilih tim secara acak
    end)
end)
