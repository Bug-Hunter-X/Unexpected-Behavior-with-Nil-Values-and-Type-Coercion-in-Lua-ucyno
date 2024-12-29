local function myFunc(a, b)
  if a == nil then
    a = 0  -- This line is problematic if 'a' is expected to be a non-nil value of a specific type.
  end
  return a + b
end

print(myFunc(nil, 10)) -- Output: 10
print(myFunc( "hello", 10)) -- Output: hello10 (string concatenation instead of addition)
print(myFunc( { }, 10))  -- Output: table: 0x... (attempt to perform arithmetic on a table)