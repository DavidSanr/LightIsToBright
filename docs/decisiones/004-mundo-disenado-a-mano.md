# ADR 004 — Mundo diseñado a mano

- **Fecha**: 2026-07-27
- **Estado**: aceptada (reemplaza la decisión inicial de mundo procedural,
  revertida el mismo día)

## Contexto

Había que decidir entre un mundo generado proceduralmente (Terraria,
Valheim) o diseñado a mano (Stardew Valley, Hollow Knight). Se consideró
brevemente la generación procedural, pero como los jefes serán específicos
— cada uno con mecánicas únicas, su arena y su lugar en la progresión —
el mundo debe estar construido alrededor de ellos.

## Decisión

El mundo se **diseña a mano**: un mapa fijo, igual para todas las
partidas, construido zona por zona en el editor.

## Razones

- Los jefes son el corazón del juego y son específicos: sus arenas, la
  ruta para llegar a ellos y el ritmo de la progresión se controlan mejor
  con diseño manual.
- Permite dirigir la experiencia: qué ve el jugador primero, dónde
  aprende cada mecánica, dónde están los atajos y secretos.
- Simplifica mucho el código: no hay generador determinista que mantener,
  el mundo son escenas de Godot con TileMaps editadas a mano.
- Co-op simple: todos los jugadores tienen el mismo mapa; solo se
  sincronizan los cambios (recursos recolectados, construcciones).

## Consecuencias

- El mundo se construye como **escenas de Godot con TileMaps**, una por
  zona/bioma, conectadas entre sí.
- Los recursos recolectables **reaparecen con el tiempo** (respawn) para
  que un mapa fijo no se agote — al estilo Stardew.
- La rejugabilidad no vendrá de mapas nuevos sino del dominio de las
  mecánicas, las builds de equipo/habilidades y el co-op.
- El costo se traslada del código al contenido: diseñar cada zona lleva
  tiempo de editor. Conviene empezar con una primera zona pequeña y bien
  cuidada antes de expandir el mapa.
