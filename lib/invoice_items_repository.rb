require 'csv'
require './lib/invoice_item.rb'

class InvoiceItemsRepository

  def initialize
    @invoice_items
  end

  def load
    CSV.foreach('./data/invoice_items.csv', headers: true, header_converters: :symbol) do |row|
      @invoice_items << Invoice.new(row[:id],
                                    row[:item_id],
                                    row[:invoice_id],
                                    row[:quantity],
                                    row[:unit_price])
    end
  end

  def all
    @invoice_items
  end

  def random
    @invoice_items.shuffle.pop
  end

  def find_by_id(id)
    @invoice_items.find do |invitem|
      invitem.id == id
    end
  end

  def find_all_by_id(id)
    @invoice_items.find_by do |invitem|
      invitem.id == id
    end
  end

  def find_by_item_id(item_id)
    @invoice_items.find do |invitem|
      invitem.item_id == item_id
    end
  end

  def find_all_by_item_id(item_id)
    @invoice_items.find_by do |invitem|
      invitem.item_id == item_id
    end
  end

  def find_by_invoice_id(invoice_id)
    @invoice_items.find do |invitem|
      invitem.invoice_id == invoice_id
    end
  end

  def find_all_by_invoice_id(invoice_id)
    @invoice_items.find_by do |invitem|
      invitem.invoice_id == invoice_id
    end
  end

  def find_by_quantity(quantity)
    @invoice_items.find do |invitem|
      invitem.quantity == quantity
    end
  end

  def find_all_by_quantity(quantity)
    @invoice_items.find_by do |invitem|
      invitem.quantity == quantity
    end
  end

  def find_by_unit_price(unit_price)
    @invoice_items.find do |invitem|
      invitem.unit_price == unit_price
    end
  end

  def find_all_by_unit_price(unit_price)
    @invoice_items.find_by do |inv_item|
      invitem.unit_price == unit_price
    end
  end

end

