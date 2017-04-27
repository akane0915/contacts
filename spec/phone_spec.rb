require 'phone'
require 'rspec'
require 'pry'


describe(Phone) do
  describe('#type') do
    it('returns the type of phone number') do
      test_phone = Phone.new({:type => 'cell', :number => '3863341234'})
      expect(test_phone.type).to(eq('cell'))
    end
  end

  describe('#phone') do
    it('returns the number of phone number') do
      test_phone = Phone.new({:type => 'cell', :number => '3863341234'})
      expect(test_phone.number).to(eq('3863341234'))
    end
  end

  describe('.all') do
    it('returns all the phones of the contact') do
      test_phone = Phone.new({:type => 'cell', :number => '3863341234'})
      expect(Phone.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a phone in an array of phones') do
      test_phone = Phone.new({:type => 'cell', :number => '3863341234'})
      test_phone.save()
      expect(Phone.all).to(eq([test_phone]))
    end
  end

  describe('.clear') do
    it('clears the array of phones') do
      test_phone = Phone.new({:type => 'cell', :number => '3863341234'})
      test_phone.save()
      Phone.clear()
      expect(Phone.all).to(eq([]))
    end
  end
end
