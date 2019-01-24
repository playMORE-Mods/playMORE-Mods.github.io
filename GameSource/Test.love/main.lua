local Collection 

function love.load()
    x=0
    y=0
    C1_x = 100
    C1_y = 100
    Collection=0
    CollectColour={255, 0, 0, 1}
    CollectedColour={0, 0, 0, 1}
end

function love.update(dt)
if x == C1_x then
    if y == C1_y then
        if Collection >= 0 then
            Collection = Collection + 1
        end
    end
end

    if love.keyboard.isDown('d') then
        x = x + 1
    elseif love.keyboard.isDown('a') then
        x = x - 1
    end

    if love.keyboard.isDown('w') then
        y = y - 1
    elseif love.keyboard.isDown('s') then
        y = y + 1
    end
end

function love.draw()
if Collection == 0 then
    love.graphics.setColor(CollectColour)
    love.graphics.rectangle("fill", C1_x, C1_y, 25, 25)
elseif Collection >= 1 then
    love.graphics.setColor(CollectedColour)
    love.graphics.rectangle("fill", C1_x, C1_y, 25, 25)
end
    love.graphics.setColor(255,255,255,1)
    love.graphics.rectangle("fill", x, y, 15, 15)
    love.graphics.print('Squares Collected: ' .. Collection, 0, 580)
end