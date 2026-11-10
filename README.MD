=====================================================
UNIVERSIDAD NACIONAL - SEDE REGIONAL BRUNCA CAMPUS COTO
EIF 400 - PARADIGMAS DE PROGRAMACIÓN (II CICLO 2026)
EXAMEN PRÁCTICO INTEGRADOR: OPERACIÓN FARO
=====================================================

1. INTEGRANTES
-----------------------------------------------------
- Integrante 1: Mathew Ramírez Gómez
- Integrante 2: Alen Cedeño Miranda

2. DISTRIBUCIÓN DE TAREAS
-----------------------------------------------------
- Análisis lógico manual (Parte I): Elaboración conjunta y revisión cruzada de la formalización, derivaciones SLD y demostración de cobertura.
- Programación Lógica en Prolog (Parte II): Implementación y pruebas de las relaciones candidato/2, cobertura/1 y sinCobertura/1.
- Programación Funcional en Haskell (Parte III): Desarrollo de funciones puras (kitsNecesarios, faltante, estadoMision, misionesPendientes y totalFaltante con recursividad explícita).
- Documentación, pruebas y video: Generación del README, estructuración del paquete de entrega y grabación de la defensa en pareja.

3. INSTRUCCIONES DE EJECUCIÓN
-----------------------------------------------------
A. Prolog (SWI-Prolog):
   1. Abrir la terminal en la carpeta del proyecto.
   2. Ejecutar el entorno interactivo: swipl faro.pl (o cargar con consult(['faro.pl']).).
   3. Consultas de prueba clave:
      ?- candidato(V, norte).
      ?- cobertura(norte).
      ?- sinCobertura(Z).

B. Haskell (GHC / GHCi):
   1. Abrir GHCi: ghci Faro.hs (o cargar mediante :load Faro.hs).
   2. Pruebas de funciones principales:
      * kitsNecesarios 8
      * faltante ("norte", 8, 2)
      * estadoMision ("norte", 8, 2)
      * misionesPendientes misiones
      * totalFaltante misiones

4. DECLARACIÓN DE ASISTENCIA DE INTELIGENCIA ARTIFICIAL
-----------------------------------------------------
Se empleó la herramienta de asistencia de Inteligencia Artificial de Google (Gemini) como apoyo técnico y de consulta para la depuración de sintaxis en Prolog y Haskell

5. REFLEXIÓN INTEGRADORA
-----------------------------------------------------
La Operación Faro demostró la complementariedad entre los paradigmas lógico y funcional. Prolog destaca en la resolución de problemas relacionales mediante la unificación, la búsqueda y el retroceso (backtracking), facilitando la deducción de coberturas y carencias humanas a partir de hechos y reglas declarativas. Por su parte, Haskell aporta robustez analítica a través de la inmutabilidad, el tipado estricto y el uso de funciones de orden superior y recursividad explícita, permitiendo transformar de manera predeterminada el estado de los recursos materiales. Ambos enfoques convergen en estructurar sistemas de emergencia rigurosos: uno modelando el razonamiento relacional de los voluntarios y el otro calculando con precisión matemática las carencias logísticas.