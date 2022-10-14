require "../"

class Person
    def greet(msg: String)
        puts "Hi #{msg}"
    end
end

class Employee < Person
    def greet(msg : Int32)
        puts "Hi this is a number: #{msg}"
    end
end

e = Employee.new
e.greet "everyone" # "Hi, everyone"

e.greet 1

