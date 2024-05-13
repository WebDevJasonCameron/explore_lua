_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.5, 0.5, 1)

    _G.pacman = {
        x = 200,
        y = 250,
        eat = false
    }

    _G.food_x = 600

end

function love.update(dt)
    pacman.x = pacman.x + 1

    if pacman.x >= food_x + 20 then
        pacman.eat = true
    end
end

function love.draw()
    if not pacman.eat then
        love.graphics.setColor(0, 0, 0)
        love.graphics.rectangle("fill", 600, 200, 70, 70)
    end

    love.graphics.setColor( 1, 0.7, 0.1)
    love.graphics.arc("fill", pacman.x, pacman.y, 60, 1, 5)


end