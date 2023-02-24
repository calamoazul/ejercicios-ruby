#Instanciar clase persona

class Persona
    attr_accessor :nombre
    attr_accessor :apellidos

    def initialize(nombre = "José", apellidos = "Núñez")
        @nombre = nombre
        @apellidos = apellidos
    end
    def saludar()
        puts "Hola, #{@nombre} #{@apellidos}. Eres muy simpático"
    end
    def calculador()
        calculadora = Calculadora.new(14, 2)
        a = calculadora.numero1
        b = calculadora.numero2
        puts "#{@nombre} va a calcular con los numeros #{a} y #{b}"
        calculadora.sumar()
        calculadora.restar()
        calculadora.multiplicar()
        calculadora.dividir()
    end
    def despedirse()
        puts "Adiós, #{@nombre}. Espero verte pronto"
    end
end

class Calculadora
    attr_accessor :numero1
    attr_accessor :numero2

    def initialize(numero1 = 0, numero2 = 0)
        @numero1 = numero1
        @numero2 = numero2
    end
    def sumar()
        puts @numero1 + @numero2
    end
    def restar() 
        puts @numero1 - @numero2
    end
    def multiplicar()
        puts @numero1 * @numero2
    end
    def dividir()
        puts @numero1 / @numero2
    end
end

if __FILE__ == $0

    persona = Persona.new
    persona.saludar
    persona.nombre = "Pepe"
    persona.calculador
    persona.despedirse
end

