class InvoiceItem

  def initialize(id, item_id, invoice_id, quantity, unit_price)
    @id = id.to_i
    @item_id = item_id.to_i
    @invoice_id = invoice_id.to_i
    @quantity = quantity.to_i
    @unit_price = unit_price.to_i
  end

end
