require 'address'
require 'rspec'
require 'pry'

describe (Address) do

  before() do
    Address.clear()
  end
  
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

  describe('.all') do
    it('returns all the addresses of the contact') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      expect(Address.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves an address in an array of addresses') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      test_address.save()
      expect(Address.all).to(eq([test_address]))
    end
  end

  describe('.clear') do
    it('clears the array of addresses') do
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      test_address.save()
      Address.clear()
      expect(Address.all).to(eq([]))
    end
  end
end
