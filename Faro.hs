-- ==========================================
-- OPERACION FARO - PROGRAMACION FUNCIONAL (HASKELL)
-- ==========================================

module Faro where

-- Tipo de dato para las misiones: (Nombre de zona, Personas afectadas, Kits disponibles)
type Mision = (String, Int, Int)

misiones :: [Mision]
misiones = [ ("norte", 8, 2)
           , ("sur", 4, 3)
           , ("este", 7, 1)
           ]

-- A. kitsNecesarios: Calcula el minimo numero entero de kits requeridos (cada kit atiende max 3 personas)
kitsNecesarios :: Int -> Int
kitsNecesarios p 
    | p <= 0    = 0
    | otherwise = ceiling (fromIntegral p / 3.0)

-- B. faltante: Calcula los kits adicionales necesarios para una mision (el resultado nunca es negativo)
faltante :: Mision -> Int
faltante (_, personas, kitsDisponibles) = 
    max 0 (kitsNecesarios personas - kitsDisponibles)

-- C. estadoMision: Devuelve "Pendiente" si faltan kits y "Cubierta" en caso contrario
estadoMision :: Mision -> String
estadoMision m
    | faltante m > 0 = "Pendiente"
    | otherwise      = "Cubierta"

-- D. misionesPendientes: Retorna los nombres de las zonas que necesitan kits adicionales (Usa orden superior: filter y map)
misionesPendientes :: [Mision] -> [String]
misionesPendientes lista = map (\(nombre, _, _) -> nombre) (filter (\m -> faltante m > 0) lista)

-- E. totalFaltante: Calcula el total de kits faltantes mediante recursividad explicita (caso base y caso recursivo)
totalFaltante :: [Mision] -> Int
totalFaltante [] = 0
totalFaltante (m:ms) = faltante m + totalFaltante ms