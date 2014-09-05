print "test lua access C++ Class"

local a = Animal("dog")
--local a = Animal.creat("dog")
--local b = Animal.creat("cat")

--a:setAge(100)
a.setAge(a,100)

--b:setAge(20)

a:sound()
--b:sound()

print ("dog age is :" .. a:getAge())
--print ("cat age is :" .. b:getAge())

