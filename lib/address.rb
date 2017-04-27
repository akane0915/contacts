class Address
  attr_reader(:type, :street, :city, :state, :zip)

  def initialize (attributes)
    @type = attributes.fetch(:type)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end
end
