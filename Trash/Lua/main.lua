--- OOP

local function Pet(name)
    local age = 10

    return {
        name = name or "Charlie",
        daysAlive = age * 365,
        status = "hungry",
        speak = function(self, sound)
            print(sound)
        end,
        feed = function(self, sound)
            print("eating", self.name)
            self:speak(sound)
        end
    }
end

--local cat = Pet()
--local dog = Pet("Jack")

--print(cat.daysAlive)
--print(dog.name)
--dog:speak("Bark!!!")
--cat:feed("Meow")

local function Dog(name, breed)
    local dog = Pet(name)

    dog.breed = breed
    dog.loyalty = 0

    return dog
end

local doberman = Dog("Jesse", "bull dog")
print(doberman.name, doberman.breed, doberman.status)