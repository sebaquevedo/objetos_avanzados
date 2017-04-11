class Product
	attr_accessor :name, :red, :green, :blue
	def initialize(name, red, green, blue)
		@name = name
		@red = red
		@green = green
		@blue = blue
	end

end

def stock(filename = "products.csv")
		productos = []
		file = File.open(filename, "r")
			data_array = file.readlines()
			data_array.each do |linea_producto|
				producto = linea_producto.split(",")
				prod = Product.new(producto[0], producto[1],producto[2],producto[3])
				productos << prod
				file2 = File.open("prod.csv", "a")
				file2.puts("#{prod.name}, #{prod.red}, #{prod.green}, #{prod.blue}")
				file2.close()
			end

		file.close()
		
	end

	def add_stock_to_file(filename ="prod.csv")
		file = File.open(filename, "a")
			puts "ingrese un nuevo producto"
			name = gets.chomp
			puts "ingrese stock red"
			red = gets.chomp
			puts "ingrese stock green"
			green = gets.chomp
			puts "ingrese stock blue"
			blue = gets.chomp
			producto = Product.new(name, red,green,blue)
			file.puts("#{producto.name}, #{producto.red}, #{producto.green}, #{producto.blue}")
		file.close()
	end

stock()
add_stock_to_file()