class Product

	attr_accessor :name, :price, :new_name, :new_price
  def initialize(name, *prices)
    @name = name
    @price = prices.map(&:to_i)
    @price.pop
  end

end

products_list = []
data = []
new_product_list = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

file = File.open('nuevo_catalogo.txt', 'w')

products_list.each do |new_product|
  file.puts "#{new_product.name}, #{new_product.price}"
end

file.close