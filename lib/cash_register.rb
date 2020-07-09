require 'pry'
class CashRegister
  
  attr_accessor :total, :items, :discount, :last_transaction_amount
 
  def initialize(discount = 0)
    @total = 0
    @discount  = discount
    @items = []
  end

  def total
    @total
  end
  
  def add_item(title,price,quantity=1)
      quantity.times do 
      @items << title
      end 
      @last_total = @total
      @total += price * quantity
  end
  
  def apply_discount
    if @discount > 0 
      @total -=self.total*(self.discount)/100
     success_message ="After the discount, the total comes to $#{@total.to_i}."
     success_message
   else 
     success_message1 = "There is no discount to apply."
     success_message1
   end
  end 
  
  def items
   @items
  end 
  
  def void_last_transaction
    @total = @last_total
  end
 end
