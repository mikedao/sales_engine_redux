class Merchant
  attr_reader :id,
              :name
  def initialize(id, name)
    @id = id.to_i
    @name = name
  end
end
