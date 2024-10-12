local function pilihTimSecaraAcak()
    local teams = {"Pirates", "Marines"} 
    local randomIndex = math.random(1, #teams)
    return teams[randomIndex]
end

game.Players.PlayerAdded:Connect(function(player)
    player.Team = game.Teams[pilihTimSecaraAcak()]
end)
