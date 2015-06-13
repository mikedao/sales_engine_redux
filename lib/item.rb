class Item

  def initialize(id, name, description, unit_price, merchant_id)
    @id = id.to_i
    @name = name
    @description = description
    @unit_price = unit_price.to_i
    @merchant_id = merchant_id.to_i
  end
end

