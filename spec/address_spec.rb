require 'address'
require 'rspec'
require 'pry'

describe (Address) do
  describe ('#type') do
    it('returns type of the address') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.type).to(eq('home'))
    end
  end
end
