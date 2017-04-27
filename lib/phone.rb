class Phone
  @@phones = []

  attr_reader(:type, :number)

  def initialize (attributes)
    @type = attributes.fetch(:type)
    @number = attributes.fetch(:number)
  end

  def self.all
    @@phones
  end

  def save
    @@phones.push(self)
  end

  def self.clear
    @@phones = []
  end
end
