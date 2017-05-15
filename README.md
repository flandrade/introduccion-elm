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

### Tuplas

### Records

### Colecciones
