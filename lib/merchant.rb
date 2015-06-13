class Merchant
  attr_reader :id,
              :name
  def initialize(parent, id, name)
    @parent = parent
    @id = id.to_i
    @name = name
  end

  def items
    @parent.find_all_items_by_merchant_id(id)
  end

  def invoices
    @parent.find_all_invoices_by_merchant_id(id)
  end

end
