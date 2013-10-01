module Terrestre
        def caminar()
            puts "camina"
        end
end

module Acuatico
        def nadar()
            puts "nada"
        end
end

module Volador
        def volar()
            puts "vuela"
        end
end

module Hablar
        def hablar()
            puts "bla bla"
        end
end

module Ladra
        def ladrar()
            puts "guau guau"
        end
end

module Desplazar
        def desplazar()
            puts "se desplaza"
        end
end

module Presionar
        def presionar()
            puts "presiona"
        end
end

module Morder
        def morder()
            puts "muerde"
         end
end

module Saltar
        def salta()
            puts "salta"
        end
end



class Mamifero
end

class Hombre < Mamifero
        include Terrestre
        include Acuatico
        include Hablar
end

class Perro < Mamifero
        include Terrestre
        include Ladra
end

class Ballena<Mamifero
        include Acuatico
end


class Ave
        include Terrestre
end

class Aguila < Ave
        include Volador
end

class Pinguino<Ave
        include Acuatico
end

class Reptiles
end

class Cocodrilo< Reptiles
        include Acuatico
        include Terrestre
end

class Boa < Reptiles
        include Desplazar
        include Presionar
end

class Cobra < Reptiles
        include Desplazar
        include Morder
end

class Anfibio
        include Acuatico
end

class Sapo< Anfibio
        include Saltar
end

class Pez
        include Acuatico
end

class Tiburon < Pez
end



juan=Hombre.new
juan.caminar
juan.hablar

pepe=Sapo.new
pepe.salta

agui=Aguila.new
agui.volar
    
boby=Perro.new
boby.volar


