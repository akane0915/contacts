require 'email'
require 'rspec'
require 'pry'


describe(Email) do
  describe('#type') do
    it('returns the type of email address') do
      test_email = Email.new({:type => 'work', :email_address => 'tom@myspace.com'})
      expect(test_email.type).to(eq('work'))
    end
  end

  describe('#email_address') do
    it('returns the email address of email') do
      test_email = Email.new({:type => 'work', :email_address => 'tom@myspace.com'})
      expect(test_email.email_address).to(eq('tom@myspace.com'))
    end
  end

  describe('.all') do
    it('returns all the emails of the contact') do
      test_email = Email.new({:type => 'work', :email_address => 'tom@myspace.com'})
      expect(Email.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the email address in an array of emails') do
      test_email = Email.new({:type => 'work', :email_address => 'tom@myspace.com'})
      test_email.save()
      expect(Email.all).to(eq([test_email]))
    end
  end

  describe('.clear') do
    it('clears the array of emails') do
      test_email = Email.new({:type => 'work', :email_address => 'tom@myspace.com'})
      test_email.save()
      Email.clear()
      expect(Email.all).to(eq([]))
    end
  end
end
