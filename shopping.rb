# PRICE = {
#     "banana" => 10,
#     "orange juice" => 10,
#     "rice" => 1,
#     "vacuum cleaner" => 150,
#     "anchovies" => 2,
# }

require 'pry'

class ShoppingCart
    attr_accessor :list_item
    def initialize
        @list_item = {}
    end

    def add_item (product, quantity)
        return @list_item[product] = quantity unless @list_item[product]
        @list_item[product] += quantity
    end

    def remove_item (product, quantity)
        return @list_item[product] -= quantity
    end

    def item_price (price)
        @price = price
    end
end

class Banana < ShoppingCart
	def initialize(price)
  	@price = price
	end
	def describe_price
  	puts "Each banana costs #{@price}"
	end
	def count_price
	end
end

my_cart = ShoppingCart.new
my_cart.add_item("banana",2)
my_cart.add_item("banana",2)
puts my_cart.list_item
my_cart.add_item("butter",2)
puts my_cart.list_item
my_cart.remove_item("banana",2)
puts my_cart.list_item
my_cart.add_item("vacuum cleaner",5)
puts my_cart.list_item
puts my_cart.item_price(4)
my_banana = Banana.new 10
my_banana.describe_price

