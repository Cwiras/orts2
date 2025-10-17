local boolTrue = {"1", "y", "Y", "t", "T"}

function tobool(str)
        if str == nil then
                return false
        end

        local firstChar = tostring(str):sub(1, 1)
        if firstChar == nil or firstChar == "" then
                return false
        end

        return table.contains(boolTrue, firstChar)
end

function XMLNode.children(self)
	local node = self:firstChild()
	return function()
		if not node then
			return nil
		end

		local prevNode = node
		node = node:nextSibling()
		return prevNode
	end
end
