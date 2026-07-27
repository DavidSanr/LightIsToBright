# ADR 003 — Co-op 2-4 jugadores desde el inicio

- **Fecha**: 2026-07-27
- **Estado**: aceptada

## Contexto

Agregar multijugador a un juego en tiempo real ya construido equivale casi a
reescribirlo: la sincronización de estado toca cada sistema (movimiento,
combate, inventario, mundo). Había que decidir el alcance antes de escribir
código.

## Decisión

El juego se diseña para **co-op de 2-4 jugadores desde el inicio**, con
modelo **host-cliente (listen server)**: un jugador hostea la partida y los
demás se conectan. No habrá servidores dedicados ni multijugador masivo.

## Consecuencias

- Toda mecánica nueva se diseña preguntando "¿cómo se sincroniza esto?".
- La lógica de juego debe ser **autoritativa en el host**: los clientes
  envían inputs/intenciones, el host resuelve y sincroniza resultados.
  Esto evita divergencias y facilita razonar sobre el estado.
- El co-op en red real se integra temprano (Fase 2 de la hoja de ruta),
  antes de que los sistemas crezcan, aunque el primer prototipo de
  movimiento/combate pueda probarse en local.
- Se descarta el multijugador masivo tipo Albion: requiere infraestructura
  de servidores y un equipo mucho mayor. El "sabor Albion" se conserva en
  el sistema de combate, no en la escala de jugadores.
