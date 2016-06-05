class ShoppingCart

  def initialize
    @shopping_carts = []
  end

  def add_item(item)
    if item.is_a?(Item)
      @shopping_carts << item
    else
      raise "You must add an item"
    end
  end
  
end
