require 'csv'
require './lib/merchant.rb'

class ItemRepository

  def initialize
    @items = []
  end

  def load
    CSV.foreach('./data/items.csv', headers: true, header_converts: :true) do |row|
      @items << Item.new(row[:id], row[:name], row[:description], row[:unit_price], row[:merchant_id])
    end
  end

  def all
    @items
  end

  def random
    @items.shuffle.pop
  end

  def find_by_id(id)
    @items.find do |item|
      item.id == id
    end
  end

  def find_all_by_id(id)
    @items.find_by do |item|
      item.id == id
    end
  end

  def find_by_name(name)
    @items.find do |item|
      item.name == name
    end
  end

  def find_all_by_name(name)
    @items.find_by do |item|
      item.name == name
    end
  end

  def find_by_description(desc)
    @items.find do |item|
      item.description == desc
    end
  end

  def find_all_by_description(desc)
    @items.find_by do |item|
      item.description == desc
    end
  end

  def find_by_unit_price(price)
    @items.find do |item|
      item.unit_price == price
    end
  end

  def find_all_by_unit_price(price)
    @items.find_by do |item|
      item.unit_price == price
    end
  end

  def find_by_merchant_id(merch_id)
    @items.find do |item|
      item.merchant_id == merch_id
    end
  end

  def find_all_by_merchant_id(merch_id)
    @items.find_by do |item|
      item.merchant_id == merch_id
    end
  end



end
