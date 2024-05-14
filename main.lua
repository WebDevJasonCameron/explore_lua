_G.love = require("love")

--- LOAD
function love.load()
    jack = {
        x = 0,
        y = 0,
        sprite = love.graphics.newImage("sprites/redHat/spriteSheet.png") -- 669x569
    }

    SPRITE_WIDTH, SPRITE_HEIGHT = 669, 569
    QUAD_WIDTH = 669
    QUAD_HEIGHT = SPRITE_HEIGHT

    quads = {}

    for i = 1, 8 do
        quads[i] = love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)

    end

end

--- UPDATE
function love.update(dt)
    love.graphics.draw(jack.sprite, quads[1], jack.x, jack.y)
end

--- DRAW
function love.draw()

end