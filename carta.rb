class Card
    attr_reader :pinta, :numero
    def initialize(pinta, numero)
        @pinta = pinta
        @numero = numero
    end
    
    def self.generate_cards
        cards_array = []
        pintas = ["Trébol", "Pica", "Corazón", "Diamante"]
        5.times do |i|
            card = Card.new(rand(1..13),pintas[rand(3)])
            cards_array << card
        end
        cards_array
    end

    def self.save_cards(cards_array, filename = "cards.csv")
        File.open(filename, "w") do |file|
            cards_array.each{|card| file.puts "#{card.pinta}, #{card.numero}"}
        end
    end

    def self.show_cards(cards_array)
        cards_array.each{|card| print "#{card.pinta} #{card.numero}\n"}
    end

    def self.read_cards(filename = "cards.csv")
        #object_arr = []
        data = []
        File.open(filename, "r") {|file| data = file.readlines}
        data
    end
end