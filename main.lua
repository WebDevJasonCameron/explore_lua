--@diagnostic disable: lowercase-global
_G.love = require("love")

--- LOAD
function love.load()
    jack = {
        x = 0,
        y = 0,
        sprite = love.graphics.newImage("sprites/spriteSheet.png") -- 669x569
    }

    SPRITE_WIDTH = 5352
    SPRITE_HEIGHT = 569
    QUAD_WIDTH = 669
    QUAD_HEIGHT = SPRITE_HEIGHT

    quads = {}

    for i = 1, 8 do
        quads[i] = love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)

    end

end

--- UPDATE
function love.update(dt)

end

--- DRAW
function love.draw()
    love.graphics.draw(jack.sprite, quads[1], jack.x, jack.y)
end