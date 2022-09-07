require 'pry'
class CashRegister
    attr_reader :total, :discount
    attr_accessor :total, :price, :quantity, :add_item, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price, quantity = 1)
        @price = price
        @quantity = quantity
        self.total += price * quantity
        quantity.times do
        self.items << title
        end
    end
    def apply_discount
        self.total -= self.total * self.discount / 100
        self.discount != 0 ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
    end
    def void_last_transaction
        self.total -= self.price * self.quantity
    end
end
binding.pry