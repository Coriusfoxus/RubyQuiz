#!/usr/bin/env ruby

class TestClass
  def initialize
    @@classCounter = 1
    @counter = 1
  end

  def printClassInfo
    puts "classCounter = #{@@classCounter}"
    puts "counter = #{@counter}"
  end

  def increment
    @@classCounter += 1
    @counter += 1
  end
end

classArray = Array.new
classArray[0] = TestClass.new
classArray[1] = TestClass.new

classArray.each do |thing|
  thing.increment
  thing.printClassInfo
end

finalClass = TestClass.new
finalClass.printClassInfo


