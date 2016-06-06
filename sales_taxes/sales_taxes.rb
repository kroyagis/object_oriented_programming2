class Item
  attr_accessor :name, :quantity, :unit_price, :tax_category

  def initialize(name, quantity, price, category)
    @name = name
    @quantity = quantity
    @price = price
    @category = category
  end

  def which_category(item)

  end
end

class Receipt

  def print_receipt(shopping_cart)

  end

  def calculate_price

  end

end

# exempt: books, food, medical products
#
