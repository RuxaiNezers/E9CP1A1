class Product

	attr_accessor :name, :price
  def initialize(name, *prices)
    @name = name
    @price = prices.map(&:to_i)
  end

  def average
  	@price.inject(&:+) / @price.size.to_f
  end
end

products_list = []
data = []
average = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
	print "Promedio de:#{product.name} >>"
	puts " #{product.average}"
	
end
