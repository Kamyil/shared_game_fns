local Class = require("shared_game_fn/class")

local Entity = Class()

function Entity:init(x, y, w, h)
	self.x = x or 0
	self.y = y or 0
	self.w = w or 0
	self.h = h or 0
end

function Entity:update(dt)
	-- override in subclasses
end

function Entity:draw()
	-- override in subclasses
end
