local function myFunc(a, b)
  if a == nil then
    error("Argument 'a' cannot be nil.") -- Explicit error handling
  elseif type(a) ~= 'number' then
    error("Argument 'a' must be a number.") -- Type checking
  end
  return a + b
end

print(myFunc(10, 10)) -- Output: 20
--print(myFunc(nil, 10)) -- Throws an error
--print(myFunc("hello", 10)) -- Throws an error