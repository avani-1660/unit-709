-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)
 
centerX = display.contentWidth * .5
centerY = display.contentHeight * .5

local sheetOptionsIdle =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetIdleKnight = graphics.newImageSheet( "assets/knightIdle.png", sheetOptionsIdle )

local sheetOptionsWalk =
{
    width = 587,
    height = 707,
    numFrames = 10
}
local sheetWalkingKnight = graphics.newImageSheet( "assets/knightWalking.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleKnight
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingKnight
    }
}

local knight = display.newSprite( sheetIdleKnight, sequence_data )
knight.x = centerX
knight.y = centerY
knight.xScale = 200/587
knight.yScale = 200/707

knight:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheet()
    knight:setSequence( "walk" )
    knight:play()
    print("walk")
end

timer.performWithDelay( 2000, swapSheet )

------------------------------------------------------
------------------------------------------------------
------------------------------------------------------


centerX = display.contentWidth * .5
centerY = display.contentHeight * .5

local sheetOptionsIdleNinja =
{
    width = 232,
    height = 439,
    numFrames = 10
}
local sheetIdleNinjaBoy = graphics.newImageSheet( "assets/ninjaBoyIdle.png", sheetOptionsIdleNinja )

local sheetOptionsGlide =
{
    width = 443,
    height =454,
    numFrames = 10
}
local sheetGlideninjaBoy = graphics.newImageSheet( "assets/ninjaBoyGlide.png", sheetOptionsGlide )


-- sequences table
local sequence_data2 = {
    -- consecutive frames sequence
    {
        name = "idle ninja",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleNinjaBoy
    },
    {
        name = "glide",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetGlideninjaBoy
    }
}

local ninjaBoy = display.newSprite( sheetIdleNinjaBoy, sequence_data2 )
ninjaBoy.x = centerX
ninjaBoy.y = centerY-200
ninjaBoy.xScale = 200/587
ninjaBoy.yScale = 200/707

ninjaBoy:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function ninjaSwapSheet()
    ninjaBoy:setSequence( "glide" )
    ninjaBoy:play()
    print("glide")
end

timer.performWithDelay( 2000, ninjaSwapSheet )