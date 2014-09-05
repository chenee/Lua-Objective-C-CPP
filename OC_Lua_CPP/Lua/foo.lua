function set_person_name_to_bob(person)
    bob = "BOA"
--    print(person.name)
    bob = get_person_name()
    set_person_name(person, bob)
end

function call_cpp_from_lua_use_tolua(noUseValue)
    print "test lua access C++ Class"

    local a = Animal("dog")

    a.setAge(a,100)

    a:sound()

    print ("dog age is :" .. a:getAge())
end


print("file is executed on load")
