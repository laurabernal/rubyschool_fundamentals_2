puts 'Crea un arreglo e imprime, después agrega un elemento y vuelve a imprimir,
      despues imprime el ultimo elemento de tu arreglo.'

array_1 = [2, 3, 1, :true]

puts "Arreglo original"
puts array_1

array_1 << "hola"

puts "Arreglo con nuevo elemento"
puts array_1

puts "Ultimo elemento del arreglo"
puts array_1[-1]
