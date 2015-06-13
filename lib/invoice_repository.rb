require 'csv'
require './lib/customer.rb'

class InvoiceRepository

  def initialize
    @invoices = []
  end

  def load
    CSV.foreach('./data/invoices.csv', headers: true, header_converters: :symbol) do |row|
      @invoices << Invoice.new(row[:id],
                               row[:customer_id],
                               row[:merchant_id],
                               row[:status])
    end
  end

  def all
    @invoices
  end

  def random
    @invoices.shuffle.pop
  end

  def find_by_id(id)
    @invoices.find do |inv|
      inv.id == id
    end
  end

  def find_all_by_id(id)
    @invoices.find_by do |inv|
      inv.id == id
    end
  end

  def find_by_customer_id(customer_id)
    @invoices.find do |inv|
      inv.customer_id == customer_id
    end
  end

  def find_all_by_customer_id(customer_id)
    @invoices.find_by do |inv|
      inv.customer_id == customer_id
    end
  end

  def find_by_merchant_id(merchant_id)
    @invoices.find do |inv|
      inv.merchant_id == merchant_id
    end
  end

  def find_all_by_merchant_id(merchant_id)
    @invoices.find_by do |inv|
      inv.merchant_id == merchant_id
    end
  end

  def find_by_status(status)
    @invoices.find do |inv|
      inv.status == status
    end
  end

  def find_all_by_status(status)
    @invoices.find_by do |inv|
      inv.status == status
    end
  end

end

