require File.join(File.dirname(__FILE__), 'spec_helper')

describe 'nested_fields' do
  
  before :each do
    Sunspot.remove_all
    @hawk_nest = Nest.new :birdies => [ Birdy.new(:name => 'mortimer', :color => 'black', :type => 'hawk') ]
    @eagle_nest = Nest.new :birdies => [ Birdy.new(:name => 'jackson', :color => 'white', :type => 'eagle') ]
    Sunspot.index! @hawk_nest, @eagle_nest
  end
  
  it 'searches for nested attributes and returns the related object' do
    Sunspot.search( Nest ) do
      keywords 'black'
    end.results.should == [ @hawk_nest ]
  end
  
end