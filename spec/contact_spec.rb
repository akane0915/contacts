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

  describe('#addresses') do
    it('returns the addresses array; it is empty to start') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.addresses).to(eq([]))
    end

  end

  describe('#add_address') do
    it('adds the address to the selected contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      test_address = Address.new({:type => 'home', :street => '555 Main St', :city => 'Portland', :state => 'OR', :zip => '97201'})
      test_contact.add_address(test_address)
      expect(test_contact.addresses).to(eq([test_address]))
    end
  end

  describe('#phones') do
    it('return the phones array; it is empty to start')do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.phones).to(eq([]))
    end
  end

  describe('#add_phone') do
    it('adds the phone to the selected contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      test_phone = Phone.new({:type => 'cell', :number => '3863341234'})
      test_contact.add_phone(test_phone)
      expect(test_contact.phones).to(eq([test_phone]))
    end
  end

  describe('#emails') do
    it('return the emails array; it is empty to start')do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.emails).to(eq([]))
    end
  end

  describe('#add_email') do
    it('adds the email to the selected contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      test_email = Email.new({:type => 'work', :email_address => 'tom@myspace.com'})
      test_contact.add_email(test_email)
      expect(test_contact.emails).to(eq([test_email]))
    end
  end

  describe('#id') do
    it('returns the id of the Contact') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      expect(test_contact.id).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a contact by its ID number') do
      test_contact = Contact.new({:first_name => 'Asia', :last_name => 'Kane', :job_title => 'senior dev', :company => 'Etsy'})
      test_contact.save
      expect(Contact.find(test_contact.id)).to(eq(test_contact))
    end
  end

end
