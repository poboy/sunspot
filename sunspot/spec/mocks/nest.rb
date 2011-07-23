require File.join(File.dirname(__FILE__), 'super_class')

class Nest < SuperClass
  
  attr_accessor :birdies, :location
  
end

Sunspot.setup(Nest) do
  
  text :location
  nested :birdies, :with_attributes => [ :name, :color, :type ]
  
end