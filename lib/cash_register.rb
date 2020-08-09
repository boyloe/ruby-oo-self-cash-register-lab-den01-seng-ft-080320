require 'pry'
class CashRegister 
    attr_accessor :total, :discount, :items, :last_trasaction
    
    def initialize discount= 0
        @total = 0
        @discount = discount
        @items = []
        
    end

    def add_item title, price, quantity=1
        self.total +=  price * quantity  
        quantity.times do
            @items << title 
        end
        self.last_trasaction = price * quantity
        
    end

    def apply_discount
        if @discount != 0 
            @total = @total - (@discount/100.0) * @total
            p "After the discount, the total comes to $#{@total.to_i}."
        else
            p "There is no discount to apply."
        end
        # binding.pry 
    end

    def void_last_transaction
        self.total -= self.last_trasaction
    end

  
end
