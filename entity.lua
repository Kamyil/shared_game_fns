--- @class Entity
--- @field x       number
--- @field y       number
--- @field w       number
--- @field h       number
--- @field is_alive boolean
local Entity = Class()

---Constructor
---@param x number
---@param y number
---@param w number
---@param h number
---@param speed number
function Entity:new(x, y, w, h, speed)
	self.x = x or 0
	self.y = y or 0
	self.w = w or 0
	self.h = h or 0
	self.is_alive = true
	self.speed = speed or 2
end

---@param dt number
function Entity:update(dt) end
function Entity:draw() end

---@return Entity
return Entity
