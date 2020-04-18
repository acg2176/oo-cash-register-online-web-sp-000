
class CashRegister
  :cash_register
  :cash_register_with_discount
  attr_accessor :total, :discount, :items

  def initialize(discount = discount)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items << title
  end

  def items
    @items
  end

  def apply_discount
    if self.discount
      total_discount = (self.discount * 0.01 * self.total).ceil
      self.total -= total_discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end


end
