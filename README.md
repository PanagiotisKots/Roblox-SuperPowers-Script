# Superpowers Script for Roblox

This script gives the player three superpowers when the game starts: **Speed Boost**, **Jump Boost**, and **Strength Boost**. The powers are applied automatically to the player's character without needing any interaction with the game world.

## Features

- **Speed Boost**: Increases the player's walk speed by a specified multiplier.
- **Jump Boost**: Increases the player's jump height by a specified multiplier.
- **Strength Boost**: Temporarily activates **PlatformStand** (making the player physically stronger), which is reset after a short period.

## Setup Instructions

1. **Open Roblox Studio**:
   - Open your game in Roblox Studio.

2. **Add the Script**:
   - In the **Explorer** window, locate `StarterPlayer`.
   - Right-click on `StarterPlayer` > `StarterPlayerScripts`.
   - Select **Insert Object** > **LocalScript**.
   - Copy and paste the script into the newly created **LocalScript**.

3. **Customize the Values**:
   - You can adjust the power multipliers in the script:
     - `speedBoostMultiplier`: The multiplier for the speed boost (default is 12).
     - `jumpBoostMultiplier`: The multiplier for the jump boost (default is 2).
     - `strengthBoostMultiplier`: The multiplier for the strength boost (default is 1.5).

4. **Test the Game**:
   - Click **Play** (or press F5) to test the game.
   - The player will immediately receive the superpowers as soon as the game starts.

5. **Optional Reset**:
   - You can adjust or remove the reset timer (`wait(10)`) if you don't want the powers to reset after a specific duration.

## How it Works

- The script listens for the player's character to load in the game.
- The superpowers (speed, jump, and strength) are applied automatically when the game begins.
- The **Strength Boost** activates **PlatformStand** for a short period to give the player temporary super strength (e.g., during punches or specific actions).
- After a defined time (10 seconds by default), all superpowers are reset to their default values.


