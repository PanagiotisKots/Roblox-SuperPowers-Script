-- Place this script in a LocalScript, which should be inside "StarterPlayerScripts"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Superpower variables (you can adjust these values as needed)
local speedBoostMultiplier = 10  -- Speed Boost
local jumpBoostMultiplier = 2  -- Jump Boost
local strengthBoostMultiplier = 1.5  -- Super Strength (for attack or movement force)

-- Function to activate Speed Boost
local function activateSpeedBoost()
	humanoid.WalkSpeed = humanoid.WalkSpeed * speedBoostMultiplier
end

-- Function to activate Jump Boost
local function activateJumpBoost()
	humanoid.JumpHeight = humanoid.JumpHeight * jumpBoostMultiplier
end

-- Function to activate Strength Boost
local function activateStrengthBoost()
	-- Increase strength temporarily (PlatformStand should only be activated during specific actions)
	humanoid.PlatformStand = true  -- This makes the player unable to move unless reset
	-- You can apply force with other game mechanics (e.g., damage, attack force, etc.)
	wait(2)  -- Keep platform stand for 2 seconds as an example
	humanoid.PlatformStand = false  -- Reset after 2 seconds
end

-- Function to reset superpowers (in case you want to turn them off)
local function resetSuperpowers()
	humanoid.WalkSpeed = 16  -- Default speed
	humanoid.JumpHeight = 50  -- Default jump height
	humanoid.PlatformStand = false
end

-- Apply superpowers immediately when the game starts
activateSpeedBoost()  -- Speed Boost
activateJumpBoost()  -- Jump Boost
activateStrengthBoost()  -- Strength Boost

-- Optionally, you can use a timer or reset mechanism if you want to turn off the powers after a certain amount of time
-- For example, to reset after 10 seconds:
wait(10)  -- Wait for 10 seconds
resetSuperpowers()  -- Reset all superpowers after 10 seconds
