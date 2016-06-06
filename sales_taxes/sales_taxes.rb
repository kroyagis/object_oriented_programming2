class Item

  attr_accessor :name, :quantity, :unit_price, :unit_total, :unit_tax

  def initialize(name, quantity, unit_price, unit_tax = 1.1, unit_total = 0)
    @name = name
    @quantity = quantity
    @unit_price = unit_price
    @unit_tax = unit_tax
    @unit_total = unit_total
  end

end
