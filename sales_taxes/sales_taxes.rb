class Item
  attr_accessor :quantity, :price

  def initialize(name, quantity, price, category)
    @name = name
    @quantity = quantity
    @price = price
    @category = category
  end
end

class Receipt

end

# exempt: books, food, medical products
#
