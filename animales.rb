module terrestre
        def caminar()
                    puts "camina"
                        end
end

module acuatico
        def nadar()
                    puts "nada"
                        end
end

module volador
        def volar()
                    puts vuela
                        end
end

module hablar
        def hablar()
                    puts "bla bla"
                        end
end

module ladra
        def ladrar()
                    puts "guau guau"
                        end
end

module desplazar
        def desplazar()
                    puts "se desplaza"
                        end
end

module presionar
        def presionar()
                    puts "presiona"
                        end
end

module moder
        def morder()
                    puts "muerde"
                        end
end

module saltar
        def salta()
                    puts "salta"
                        end
end



class mamifero
end

class hombre < mamifero
        include terrestre
            include acuatico
                include hablar
end

class perro < mamifero
        include terrestre
            include ladrar
end

class ballena<mamifero
        include acuatico
end


class ave
        include terrestre
end

class aguila < ave
        include volador
end

class pinguino<ave
        include acuatico
end

class reptiles
end

class cocodrilo< reptiles
        include acuatico
            include terrestre
end

class boa < reptiles
        include desplazar
            include presionar
end

class cobra < reptiles
        include desplazar
            include morder
end

class anfibio
        include acuatico
end

class sapo< anfibio
        include saltar
end

class pez
        include acuatico
end

class tiburon < pez
end




