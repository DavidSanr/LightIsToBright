# ADR 002 — Motor: Godot 4 (GDScript)

- **Fecha**: 2026-07-27
- **Estado**: aceptada

## Contexto

Se necesita un motor para un juego 2D pixel art top-down, en tiempo real,
con co-op de 2-4 jugadores desde el diseño inicial. Alternativas evaluadas:
Godot 4, Unity y web (Phaser/TypeScript).

## Decisión

Usaremos **Godot 4** con **GDScript**.

## Razones

- Excelente soporte 2D nativo (tilemaps, física 2D, pixel-perfect rendering).
- **API de multijugador de alto nivel integrada** (`MultiplayerSpawner`,
  `MultiplayerSynchronizer`, RPCs), clave porque el co-op está decidido
  desde el inicio.
- Gratis y open source, sin licencias ni costos futuros.
- GDScript es fácil de aprender y rápido para iterar.
- Exporta a Windows, Linux, macOS y web.

## Alternativas descartadas

- **Unity**: ecosistema enorme, pero más pesado para 2D puro, licencia
  comercial, y su stack de red (Netcode for GameObjects) es más complejo
  que el de Godot para un co-op pequeño.
- **Phaser/TypeScript**: ideal para prototipos en navegador, pero se queda
  corto para un juego de esta ambición (mundo persistente, red, rendimiento).

## Consecuencias

- Versión mínima: **Godot 4.3** (estándar, no .NET).
- Los scripts van en GDScript con tipado estático donde sea posible.
