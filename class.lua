--- Helper to create a new class, optionally extending a base.
---@generic T
---@param base T?
---@return T
function Class(base)
	local cls = {}
	cls.__index = cls
	setmetatable(cls, {
		__index = base,
		__call = function(c, ...)
			local instance = setmetatable({}, cls)
			if instance.init then
				instance:init(...)
			end
			return instance
		end,
	})
	return cls
end

return Class
