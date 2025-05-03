-- Class helper: optional single inheritance
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
