_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.5, 0.5, 1)

    _G.pacman = {
        x = 200,
        y = 250,
        eat = false
    }

    _G.food = {
        x = 600,
        eaten = false
    }
end

function love.update(dt)
    if love.keyboard.isDown("a") then
        pacman.x = pacman.x - 1
    end

    if pacman.x >= food.x + 20 then
        food.eaten = true
    end
end

function love.draw()
    -- Food
    if not food.eaten then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", food.x, 200, 70, 70)
    end

    -- Pacman
    --love.graphics.setColor( 1, 0.7, 0.1)
    --love.graphics.arc("fill", pacman.x, pacman.y, 60, 1, 5)


end