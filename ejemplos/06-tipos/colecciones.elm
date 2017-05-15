module Colecciones exposing (..)

{-
Listas
-}

-- Números
listaNumero : List number
listaNumero = [1, 2, 3]

-- Lista deben tener el mismo tipo.
listaNumeroError : List number
listaNumeroError = [1, "2", 3]

-- Texto
listaString : List String
listaString = ["Hola", "Elm", "lista"]

{-
Tuplas
-}

-- Mismo tipo
tuplaTipo : ( Int, Int )
tuplaTipo = ( 2, 5 )

-- Diferentes tipos
tuplaMultiple : ( String, String, Int )
tuplaMultiple = ( "Name", "Last name", 1 )

{-
Records
-}

-- Record sin tipo
cuentaSinTipo  = 
 { nombre = "Name",
   apellido = "lastName",
   id = 1
 }

-- Record con tipo
type alias Nombre = String 

type alias Cuenta =
  { nombre : Nombre
  , apellido : String
  , id : Int
  }

cuentaConTipo : Cuenta 
cuentaConTipo = Cuenta "Nombre" "Apellido" 2

-- Obtener valor
nombreActual : Cuenta -> Nombre
nombreActual cuenta = cuenta.nombre

-- Sólo se tiene acceso a campos existentes.
cedulaActual : Cuenta -> Int
cedulaActual cuenta = cuenta.cedula

-- Actualizar valor
actualizarNombre : Cuenta -> Nombre -> Cuenta 
actualizarNombre cuenta nuevoNombre =
  { cuenta | nombre = nuevoNombre }
