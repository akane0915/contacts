class Email
  @@emails = []

  attr_reader(:type, :email_address)

  def initialize (attributes)
    @type = attributes.fetch(:type)
    @email_address = attributes.fetch(:email_address)
  end

  def self.all
    @@emails
  end

  def save
    @@emails.push(self)
  end

  def self.clear
    @@emails = []
  end
end
