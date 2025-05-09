local Class = require("shared_game_fns/class")

--- @class Entity
--- @field x       number
--- @field y       number
--- @field w       number
--- @field h       number
--- @field hp      number
--- @field mana    number
--- @field sprite  string  TODO: Change it to string per state
--- @field attack_damage  number
--- @field armor  number
--- @field magic_resistance  number
--- @field abilities  Ability[]
local Entity = Class()

---Constructor
---@param newEntity Entity
function Entity:new(newEntity)
	self.x = newEntity.x or 0
	self.y = newEntity.y or 0
	self.w = newEntity.w or 0
	self.h = newEntity.h or 0
	self.hp = newEntity.hp or 2
	self.mana = newEntity.mana or 2
	self.movement_speed = newEntity.movement_speed or 2
	self.attack_damage = newEntity.attack_damage or 2
	self.armor = newEntity.armor or 2
	self.magic_resistance = newEntity.magic_resistance or 2
end

---@param dt number
function Entity:update(dt) end
function Entity:draw() end

---@return Entity
return Entity
