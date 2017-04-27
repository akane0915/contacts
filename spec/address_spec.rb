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

  describe ('#street') do
    it('returns street of the address') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.street).to(eq('555 Main St'))
    end
  end

  describe ('#city') do
    it('returns city of the address') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.city).to(eq('Portland'))
    end
  end

  describe ('#state') do
    it('returns state of the address') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.state).to(eq('OR'))
    end
  end

  describe ('#zip') do
    it('returns zip of the address') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(test_address.zip).to(eq('97201'))
    end
  end
end
