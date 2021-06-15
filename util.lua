-- util.lua
-- safazi 2021

-- TODO: add support for more numbers
function multiply(a, b)
	if a == 0 then
		return 0
	else if a == 1 then
		return b
	else if a == 2 then
		return b + b
	else if a == 3 then
		return b + b + b
	else if a == 4 then
		return b + b + b + b
	else if a == 5 then
		return b + b + b + b + b
	else if a == 6 then
		return b + b + b + b + b + b
	else if a == 7 then
		return b + b + b + b + b + b + b
	else
		error('number too large!')
	end
end

return {
	multiply = multiply
}
