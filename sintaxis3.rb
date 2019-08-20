class Vehicle
    def initialize(model, year)
        @model = model
        @year = year
        @start = false
    end
    def engine_start
        @start = true
    end
end    
class Car < Vehicle
    @@instances = 0
    def initialize()
        @@instances += 1
    end
    def engine_start
        super
        puts "el motor se ha encendido"
    end    
    def self.cantidad_de_intancias
        @@instances
    end       
end    

10.times do |c|
    Car.new.engine_start
end  

puts "se han creado #{Car.cantidad_de_intancias} autos"
# ruby sintaxis3.rb