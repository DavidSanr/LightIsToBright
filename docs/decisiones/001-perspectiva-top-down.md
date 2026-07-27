# ADR 001 — Perspectiva: top-down

- **Fecha**: 2026-07-27
- **Estado**: aceptada

## Contexto

Las referencias estéticas del proyecto apuntaban a dos formatos distintos:
Terraria es de vista lateral (gravedad, plataformas, cavar hacia abajo),
mientras que Stardew Valley y Albion Online son top-down. El combate deseado
(tiempo real tipo Albion: movimiento libre, apuntado con mouse, esquivas,
posicionamiento) es un pilar central del juego.

## Decisión

El juego será **2D top-down** (vista cenital, sin gravedad de plataformas).

## Consecuencias

- El combate tipo Albion funciona de forma natural: posicionamiento en
  cualquier dirección, habilidades dirigidas con el mouse, áreas telegrafiadas.
- La estética hereda más de Stardew Valley que de Terraria; de Terraria
  tomamos la variedad de items, enemigos y la progresión por crafteo.
- No habrá mecánicas de cavar verticalmente ni construcción por capas de
  altura; la exploración es horizontal por zonas/biomas.
