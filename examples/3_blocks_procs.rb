# Crea una función llamada verificar_bloque
# Revisa si recibe un bloque, en caso de recibirlo, manda a llamar tu bloque.
# En caso de no recibirlo imprime "Yo no tengo un bloque".


# escribe tu funcion
def verificar_bloque(&block)
  if block.nil?
    puts 'Yo no tengo un bloque'
  else
    yield
  end
end

verificar_bloque { puts "Ya llegué amá" }
verificar_bloque

puts '======'

# Ahora crea una función muy similar que reciba dos
# parámetros: "accion" y un proc (llámalo como gustes).
# Si la acción es di_hola, manda llamar al bloque.
# Si no lo es, imprime "Suerte para la proxima"


# escribe tu funcion

def verificar_accion(accion, quetepe)
  if accion == :di_hola
    quetepe.call
  else
    puts "Suerte para la proxima"
  end
end
  
verificar_accion(:di_hola, Proc.new{ puts "Hola a todos" })
verificar_accion(:di_adios, Proc.new{ puts "Ahorita no joven" })

# El resultado esperado es:
# Ya llegué amá
# Yo no tengo un bloque
# ======
# Hola a todos
# Suerte para la proxima
