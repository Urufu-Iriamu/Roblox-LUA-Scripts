    local idleAnimationId = "rbxassetid://93900202827086"

    local players = game:GetService("Players")

    local function onCharacterAdded(character)
        local humanoid = character:WaitForChild("Humanoid")

        local animateScript = character:WaitForChild("Animate")

        animateScript.idle.Animation1.AnimationId = idleAnimationId
    end

    local function onPlayerAdded(player)
        player.CharacterAppearanceLoaded:Connect(onCharacterAdded)
    end

    players.PlayerAdded:Connect(onPlayerAdded)
