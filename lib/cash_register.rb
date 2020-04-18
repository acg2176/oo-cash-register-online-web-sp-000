
class CashRegister
  :cash_register
  :cash_register_with_discount
  attr_accessor :total, :discount, :items

  def initialize(discount = discount)
    @total = 0.0
    @discount = discount
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if self.discount
      total_discount = self.discount/100 * self.total
      self.total -= (total_discount).ceil
      "After the discount, the total comes to $#{self.total}."
    end
  end
end
