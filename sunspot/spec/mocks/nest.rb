class Nest < MockRecord
  
  attr_accessor :birdies, :location
  
end

Sunspot.setup(Nest) do
  
  text :location
  nested :birdies, :namespace => 'birdy', :with_attributes => [ :name, :color, :type ]
  
end