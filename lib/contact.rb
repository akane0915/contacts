class Contact
  @@contacts = []
  attr_reader(:first_name, :last_name, :job_title, :company)

  def initialize (attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @addresses = []
    @phones = []
  end

  def self.all
    @@contacts
  end

  def save
    @@contacts.push(self)
  end

  def self.clear
    @@contacts = []
  end

  def addresses
    @addresses
  end

  def add_address(address)
    @addresses.push(address)
  end

  def phones
    @phones
  end

  def add_phone(phone)
    @phones.push(phone)
  end
end
