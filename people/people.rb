class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}!"
  end
end

class Student < Person
  def learn
    puts 'I get it!'
  end
end

class Instructor < Person
  def teach
    puts 'Evertyhing in Ruby is an Object'
  end
end

chris = Instructor.new('Chris')
chris.greeting

cristina = Student.new('Cristina')
cristina.greeting

chris.teach
cristina.learn

cristina.teach

# This doesn't work because a teach method can 
# only be called on instances of Instructor class
