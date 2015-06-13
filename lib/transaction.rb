class Transaction

  def initialize(id, invoice_id, credit_card_number, credit_card_expiration_date, result)
    @id = id.to_i
    @invoice_id = invoice_id.to_i
    @credit_card_number = credit_card_number
    @credit_card_expiration_date = credit_card_expiration_date
    @result = result
  end
end
