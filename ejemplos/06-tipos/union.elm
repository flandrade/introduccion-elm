module Union exposing (..)

{-
Union
-}

type Forma 
  = FormaRectangulo 
  | FormaCuadrado 
  | FormaCirculo

-- Se puede añadir detalles del tipo
type FormaConTipos
    = Rectangulo Float Float
    | Cuadrado Float

-- Operación con tipos
area : FormaConTipos -> Float
area figura =
  case figura of
    Rectangulo base altura ->
      base * altura
    Cuadrado lado ->
      lado * lado