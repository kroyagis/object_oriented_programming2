require_relative 'sales_taxes'

class Receipt < Item

  EXEMPT_ITEM = ['book', 'pill', 'chocolate']
  attr_accessor :sales_taxes, :total

  def calculate_total
    @sales_taxes = 0
    @total = 0
    @shopping_cart.each do |item|
      EXEMPT_ITEM.each do |exempt|
        item.name.each do |name|
          if name.include?(exempt)
           item.unit_tax -= 0.1
          end
        end
      end
      if item.name.include?('imported')
        item.unit_tax += 0.05
      end
      item.unit_total = (item.quantity * item.unit_price) * item.unit_tax
      @sales_taxes += item.unit_price * (item.unit_tax - 1)
      @total += item.unit_total
      puts "#{item.quantity} #{item.name}: #{item.unit_total}"
    end
    puts "Sales Taxes: #{@sales_taxes}"
    puts "Total: #{@total}"
    return @total
  end
end

class ShoppingCart < Receipt

  attr_accessor :shopping_cart

  def initialize
    @shopping_cart = []
  end

  def start_shopping
    i = 0
    counter = 0
    while i == 0
      counter += 1
      user_input = gets.chomp
      if user_input == 'quit'
        return @shopping_cart
        i += 1
      else
        @shopping_cart << Item.new(clean_input(user_input)[1..(clean_input(user_input).length)-2], clean_input(user_input)[0].to_i, clean_input(user_input).last.to_f)
      end
    end
    return @shopping_cart
  end

  def clean_input(user_input)
    new_user_input = []
    user_input = user_input.gsub(/\sat\s/, " ")
    new_user_input = user_input.split(" ")
    return new_user_input
  end

end
