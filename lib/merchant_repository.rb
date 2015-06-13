require 'csv'
require './lib/merchant.rb'

class MerchantRepository
  def initialize
    @merchants = []
  end

  def load
    CSV.foreach('./data/merchants.csv', headers: true, header_converters: :symbol) do |row|
      @merchants << Merchant.new(row[:id], row[:name])
    end
  end

  def all
    @merchants
  end

  def random
    @merchants.shuffle.pop
  end

  def find_by_id(id)
    @merchants.find do |merchant|
      merchant.id == id
    end
  end

  def find_all_by_id(id)
    @merchants.find_by do |merchant|
      merchant.id == id
    end
  end

  def find_by_name(name)
    @merchants.find do |merchant|
      merchant.name == name
    end
  end

  def find_all_by_name(name)
    @merchants.find_by do |merchant|
      merchant.name == name
    end
  end

end

if __FILE__==$0
  mr = MerchantRepository.new
  mr.load
  puts mr.find_by_id(1).name
end
