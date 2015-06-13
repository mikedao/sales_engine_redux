class Invoice

  def initialize(id, customer_id, merchant_id, status)
    @id = id.to_i
    @customer_id = customer_id.to_i
    @merchant_id = merchant_id.to_i
    @status = status
  end

end

