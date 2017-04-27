require 'contact'
require 'rspec'
require 'pry'
require 'address'
require 'email'
require 'phone'

describe (Contact) do
  before() do
    Contact.clear
  end

  describe('#first_name') do
    it('returns first name of contact') do
      test_contact = Contact.new({:first_name=> 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.first_name).to(eq('Asia'))
    end
  end

  describe('#last_name') do
    it('returns last name of the contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.last_name).to(eq('Kane'))
    end
  end

  describe('#job_title') do
    it('returns job title of the contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.job_title).to(eq('senior dev'))
    end
  end

  describe('#company') do
    it('returns company of the contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.company).to(eq('Etsy'))
    end
  end

  describe('.all') do
    it('returns a list of all contacts and it empty to start') do
      expect(Contact.all).to(eq([]))
    end
  end

  describe('#save') do
    it('adds the contact to an array of contacts') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.save).to(eq([test_contact]))
    end
  end

  describe('.clear') do
    it('clears the array of our contacts') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      test_contact.save
      Contact.clear
      expect(Contact.all).to(eq([]))
    end
  end
end
