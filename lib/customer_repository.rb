require 'csv'
require './lib/customer.rb'

class CustomerRepository

  def initialize
    @customers = []
  end

  def load
    CSV.foreach('./data/customers.csv', headers: true, header_converters: true) do |row|
      @customers << Customer.new(row[:id], row[:first_name], row[:last_name])
    end
  end

  def all
    @customers
  end

  def random
    @customers.shuffle.pop
  end

  def find_by_id(id)
    @customers.find do |customer|
      customer.id == id
    end
  end

  def find_all_by_id(id)
    @customers.find_by do |customer|
      customer.id == id
    end
  end

  def find_by_first_name(first_name)
    @customers.find do |customer|
      customer.first_name == first_name
    end
  end

  def find_all_by_first_name(first_name)
    @customers.find_by do |customer|
      customer.first_name == first_name
    end
  end

  def find_by_last_name(last_name)
    @customers.find do |customer|
      customer.last_name == last_name
    end
  end

  def find_all_by_last_name(last_name)
    @customers.find_by do |customer|
      customer.last_name == last_name
    end
  end



end
