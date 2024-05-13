--io.output("myFile.txt")
--io.write("Hello World")
--io.close()

--io.input("myFile.txt")
--local data = io.read("*all")
--print(data)
--io.close()

--local file = io.open("myFile.txt", "w")
--if file ~= nil then
--    file:write("Hello there!")
--    file:close()
--else
--    print("Could not open the file")
--end

--local file = io.open("myFile.txt", "r")
--if file ~= nil then
--    print(file:read("*line"))
--    file:close()
--else
--    print("Could not open the file")
--end

print("What do you want to add to the file?")

local data = io.read()

local file = io.open("myFile.txt", "a")
if file ~= nil then
    print(file:write("\n"..data))
    file:close()
else
    print("Could not open the file")
end



















