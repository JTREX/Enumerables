# Strings en índices nones de un arreglo
# Regresa un arreglo con los Strings en las posiciones 1, 3, 5, 7, etc.

def odd_indexed(array)
  array.select.each_with_index do |value,index|
    value if index % 2 != 1
  end
end

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]

# Strings de tamaño mayor a 5
# Regresa todos los Strings que tienen una longitud mayor a 4 caracteres.


def long_strings(array)
a = [] 
array.select{ |str| a << str if str.length > 4 }
a
end

p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]

# Primer string que empieza con 'h'
# Regresa el primer String que empieza con la letra 'h'.

def start_with_h(array)
  array.select { |word| word.include? "h" }.join
end

p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"

# Que todos los strings empiecen con mayúscula
# Regresa el mismo Array de String que recibe
# pero ahora todos los Strings tienen la primera letra mayúscula.

def capitalize_array(array) 
  array.map(&:capitalize)
end

p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]

#Agrupar strings por su primera letra
#Regresa un Hash donde las keys son las primeras letras de los Strings
#y los values son todos los Strings que empiezan con esa letra.

def group_by_starting_letter(array)

 array.group_by {|i| i.chr }
  
end

p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}

# Contar el número de 'r' en un string
# Regresa el número de letras 'r' que tiene un string.

def number_of_r(str)
 
 str.count("r")
  
end


p number_of_r("ferrocarril") == 4



def odd_indexed(arr)
  arr.select.each_with_index do |value,index|
    value if index % 2 != 1
  end
end

def long_strings(arr)
  a = [] 
  arr.select{ |str| a << str if str.length > 4 }
  a
end

def start_with_h(arr)
  arr.select { |word| word.include? "h" }.join
end

def capitalize_array(arr)
  arr.map(&:capitalize)
end

def group_by_starting_letter(array)
 array.group_by {|i| i.chr }
end

def number_of_r(str)
  str.count("r")
end

# Pruebas

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4
