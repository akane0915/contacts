class Address
  attr_reader(:type, :street, :city, :state, :zip)
  @@addresses = []

  def initialize (attributes)
    @type = attributes.fetch(:type)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

  def self.all
    @@addresses
  end

  def save
    @@addresses.push(self)
  end

  def self.clear
    @@addresses = []
  end
end
