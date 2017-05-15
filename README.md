<a href="http://elm-lang.org/">
  <img src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Elm_logo.svg" alt="Elm" align="right"  width="120" />
</a>

# Introducción a Elm

_This is an introduction to Elm. You can take a look at the presentation in English [here]()._

Puedes revisar la presentación [aquí](https://github.com/flandrade/introduccion-elm/blob/master/presentacion/introduccion-elm.pdf).

## Temas

- Introducción 
- Ventajas
- Sistema de tipos

## Introducción 

- Elm es un lenguaje de programación funcional para el desarrollo de aplicaciones front-end. 

- Elm compila a JavaScript. Elm puede ser utilizado para reemplazar o añadir código JavaScript en el navegador.

## ¿Por qué Elm?

### ¿Por qué reemplazar JavaScript?

- Se necesita habilidad para programar correctamente en JavaScript.
- Bugs son difíciles de detectar en JavaScript.
- Elm simplifica refactorización y mantenimiento.

### ¿Por qué reemplazar Flow o TypeScript?

- Librerías para JavaScript. 
- Aumenta el número de dependencias. 
- Son opcionales. 
- Elm es un lenguaje de programación funcional: inmutabilidad, funciones puras, sistema de tipos y pattern matching.

## ¡Hola, Elm!

```elm
--  Declaración del módulo "Hola".
module Hola exposing (..)

-- Importación de módulos requeridos. En este caso, el módulo es "Html".
import Html exposing (text)

-- Función principal.
main =
  text "¡Hola, Elm!"
```

Resultado: 

```
elm reactor
elm reactor 0.18.0
Listening on http://0.0.0.0:8000/
```

- `reactor` crea un servidor que compila Elm sobre la marcha. 

## Ventajas

### El código de Elm es expresivo 

Elm simplifica refactorización y mantenimiento.

### No hay errores en tiempo de ejecución

- No hay `null`. 
- No hay `No undefined is not a function`.

### Mensajes de errores efectivos

### Código con una arquitectura que permite escalar

### Versionamiento de paquetes

## Sistema de tipos

### Datos primitivos 

Números:

```elm
valorInt : Int
valorInt = 2

valorFloat : Float
valorFloat = 2.2
```

Caracteres:

```elm
valorChar : Char
valorChar = 'c'
```

__Nota:__ Char tiene sólo un caracter. No es correcto:

```elm
valorCharError : Char
valorCharError = 'abc'
```

Cadenas de texto:

```elm
valorString : String
valorString = "Hola"

multiString : String
multiString = 
  """
  Hello
  World
  """
```

Bool:

```elm
valorBool : Bool
valorBool = False

```

### Colecciones

#### Listas

- Todos los elementos tienen los mismo tipos. 

Números:

```elm
listaNumero : List number
listaNumero = [1, 2, 3]
```

Texto:

```elm
listaString : List String
listaString = ["Hola", "Elm", "lista"]
```

- Si no tienen el mismo tipo: 

```elm
listaNumero = [1, "x", 3]
```

Error:

```
-- TYPE MISMATCH ----------------------------------

The 1st and 2nd entries in this list are different types of values.

9|               [1, "2", 3]
                     ^^^
The 1st entry has this type:

    number

But the 2nd is:

    String

Hint: Every entry in a list needs to be the same type of value. This way you
never run into unexpected values partway through. To mix different types in a
single list, create a "union type" as described in:
<http://guide.elm-lang.org/types/union_types.html>
```

#### Tuplas

Número de elementos fijo de elementos. Pueden ser diferentes tipos. 

Mismo tipo:

```elm
vector : ( Int, Int )
vector = ( 2, 5 )
```

Diferentes tipos:

```elm
dato : ( String, String, Int )
dato = ( "test@email.com", "Test", 1 )
```

#### Records

Colección de pares de nombres y valores. Es similar a los objectos en JavaScript.

En JavaScript: 

```js
var persona  = 
 { nombre: "Pepito",
   apellido: "Perez"
 }
```

En Elm: 

```elm
persona  = 
 { nombre = "Pepito",
   apellido = "Perez"
 }
```

##### Record sin tipo: 

```elm
cuentaSinTipo  = 
  { nombre : String
  , apellido : String
  , id : Int
  }
```

##### Se pueden crear tipos nuevos. Record con tipo: 

```elm
type alias Nombre = String 

type alias Cuenta =
  { nombre : Nombre
  , apellido : String
  , id : Int
  }

cuentaConTipo : Cuenta 
cuentaConTipo = Cuenta "Nombre" "Apellido" 2
```

##### Operaciones

- Operaciones: Obtener valor.

```elm
nombreActual : Cuenta -> Nombre
nombreActual cuenta = cuenta.nombre
```

- Operaciones: Actualizar valor.

```elm
actualizarNombre : Cuenta -> Nombre -> Cuenta 
actualizarNombre cuenta nuevoNombre =
  { cuenta | nombre = nuevoNombre }
```

#### Ventajas: 

- Los campos deben existir. 
- Un campo no puede ser `null`.

```elm
cedulaActual : Cuenta -> Int
cedulaActual cuenta = cuenta.cedula
```

Error: 

```
-- TYPE MISMATCH ----------------------------------

`cuenta` does not have a field named `cedula`.

55| cedulaActual cuenta = cuenta.cedula
                          ^^^^^^^^^^^^^
The type of `cuenta` is:

    Cuenta

Which does not contain a field named `cedula`.

Hint: The record fields do not match up. One has apellido, id, and nombre. The
other has cedula.
```

### Unión 

Forma es un tipo que puede ser uno de los siguientes tipos: `FormaRectangulo`, `FormaCuadrado` y `FormaCirculo`.

```elm
type Forma 
  = FormaRectangulo 
  | FormaCuadrado 
  | FormaCirculo
```

- Se puede añadir detalles del tipo: 

```elm
type FormaConTipos
    = Rectangulo Float Float
    | Cuadrado Float
```

- Operación con tipos utilizando "Pattern Matching".

```elm
area : FormaConTipos -> Float
area figura =
  case figura of
    Rectangulo base altura ->
      base * altura
    Cuadrado lado ->
      lado * lado
```

### Maybe

En JavaScript: 

```js 
var nombre = "Juan"
var apellido = null;
``` 

En Elm no existe `null`. ¿Cómo representar un valor vación? Con `Maybe`.

```elm
type Maybe a = Just a | Nothing
```

Si se intenta obtener el primer elemento de una lista vacía, el resultado es `Nothing`.

```
> List.head []
Nothing : Maybe.Maybe a
``` 

```elm
valor : Int -> Maybe Int
valor id =
  if id >= 0 then
    Just id
  else
    Nothing
```
