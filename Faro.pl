% ============================================================
% EIF400 - Paradigmas de Programacion
% Operacion Faro - Parte II: Desarrollo en Prolog
% ============================================================

% ---------- Hechos (reutilizados de la Parte I) ----------

zona(norte).
zona(sur).
zona(este).

voluntario(ana, medicina).
voluntario(bruno, logistica).
voluntario(carla, medicina).
voluntario(diego, rescate).

disponible(ana).
disponible(bruno).
disponible(diego).

requiere(norte, rescate).
requiere(norte, medicina).
requiere(sur, logistica).
requiere(este, medicina).

% ---------- A. candidato/2 ----------
% Un voluntario es candidato para una zona si la zona requiere
% su especialidad y el voluntario esta disponible.

candidato(V, Z) :-
    requiere(Z, H),
    voluntario(V, H),
    disponible(V).

% ---------- B. cobertura/1 ----------
% Una zona tiene cobertura humana si existen dos voluntarios
% DISTINTOS que son candidatos para esa zona.

cobertura(Z) :-
    candidato(V1, Z),
    candidato(V2, Z),
    V1 \= V2.

% ---------- C. sinCobertura/1 ----------
% Enumera las zonas registradas para las que NO se puede
% demostrar cobertura humana. Usa negacion por fallo.

sinCobertura(Z) :-
    zona(Z),
    \+ cobertura(Z).