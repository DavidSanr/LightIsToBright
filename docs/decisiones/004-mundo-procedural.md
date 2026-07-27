# ADR 004 — Mundo generado proceduralmente

- **Fecha**: 2026-07-27
- **Estado**: aceptada

## Contexto

Había que decidir entre un mundo generado proceduralmente (Terraria,
Valheim) o diseñado a mano (Stardew Valley). La decisión afecta la
rejugabilidad, el pipeline de contenido y cómo se estructura el código
del mundo desde el inicio.

## Decisión

El mundo se **genera proceduralmente a partir de una semilla (seed)**.
Cada partida nueva crea un mundo distinto; la misma semilla reproduce
el mismo mundo.

## Razones

- Rejugabilidad: cada mundo nuevo es una experiencia distinta, clave en
  un survival donde se empieza de cero.
- Encaja con la progresión por jefes tipo Valheim: los biomas se generan
  y el jugador los desbloquea en orden venciendo jefes.
- Co-op amistoso: para sincronizar el mundo entre 8 jugadores basta con
  compartir la semilla y los cambios hechos por los jugadores (bloques
  destruidos, construcciones), no el mapa completo.

## Consecuencias

- La generación debe ser **determinista**: misma semilla → mismo mundo,
  en cualquier máquina. Nada de aleatoriedad fuera del generador seeded.
- El mundo se organiza en **biomas por etapas de progresión** (cada uno
  con su jefe); el generador debe garantizar que todos los biomas existan
  y sean alcanzables en cada mundo generado.
- Se guarda por separado: la semilla + los deltas del jugador (lo que se
  destruyó, construyó o saqueó), no el mapa entero.
- Los puntos hechos a mano (arena de un jefe, estructuras especiales) se
  diseñan como **plantillas prefabricadas** que el generador coloca, al
  estilo de las mazmorras de Valheim — lo mejor de ambos mundos.
- Perdemos el mapa artesanal tipo Stardew; el cariño artesanal se
  concentra en las plantillas, los biomas y las arenas de jefes.
