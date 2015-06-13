require 'csv'
require './lib/customer.rb'

class TransactionRepository

  def initialize
    @transactions = []
  end

  def load
    CSV.foreach('./data/customers.csv', headers: true, header_converters: :symbol) do |row|
      @customers << Transaction.new(row[:id],
                                    row[:invoice_id],
                                    row[:credit_card_number],
                                    row[:credit_card_expiration_date],
                                    row[:result])
    end
  end

  def all
    @transactions
  end

  def random
    @transactions.shuffle.pop
  end

  def find_by_id(id)
    @transactions.find do |trans|
      trans.id == id
    end
  end

  def find_all_by_id(id)
    @transactions.find do |trans|
      trans.id == id
    end
  end

  def find_by_invoice_id(invoice_id)
    @transactions.find do |trans|
      trans.invoice_id == invoice_id
    end
  end

  def find_all_by_invoice_id(invoice_id)
    @transactions.find_by do |trans|
      trans.invoice_id == invoice_id
    end
  end

  def find_by_credit_card_number(credit_card_number)
    @transactions.find do |trans|
      trans.credit_card_number == credit_card_number
    end
  end

  def find_all_by_credit_card_number(credit_card_number)
    @transactions.find_by do |trans|
      trans.credit_card_number == credit_card_number
    end
  end

  def find_by_credit_card_expiration_date(credit_card_expiration_date)
    @transactions.find do |trans|
      trans.credit_card_expiration_date == credit_card_expiration_date
    end
  end

  def find_all_by_credit_card_expiration_date(credit_card_expiration_date)
    @transactions.find_by do |trans|
      trans.credit_card_expiration_date == credit_card_expiration_date
    end
  end

  def find_by_result(result)
    @transactions.find do |trans|
      trans.result == result
    end
  end

  def find_all_by(result)
    @transactions.find_by do |trans|
      trans.result == result
    end
  end

end
