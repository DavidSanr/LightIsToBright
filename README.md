# Light Is To Bright

Juego 2D top-down de supervivencia con crafteo, batallas de jefes con mecánicas
especiales y combate en tiempo real, para 1-4 jugadores en co-op.

## Visión

- **Estética**: pixel art 2D, inspirado en Terraria y Stardew Valley.
- **Género**: survival + crafteo. Recolectas, construyes y sobrevives.
- **Progresión por jefes**: cada jefe tiene mecánicas únicas que hay que
  aprender para vencerlo, y derrotarlo desbloquea nuevos materiales,
  herramientas y zonas (inspirado en Valheim).
- **Combate**: en tiempo real, con movimiento libre, apuntado con el mouse,
  esquivas y habilidades con cooldown (inspirado en Albion Online).
- **Co-op**: 2-4 jugadores desde el diseño inicial.

## Stack

- **Motor**: [Godot 4](https://godotengine.org/) (GDScript).
- **Multijugador**: API de alto nivel de Godot (`MultiplayerSpawner` /
  `MultiplayerSynchronizer`), modelo host-cliente (listen server).

Las decisiones importantes están documentadas en [`docs/decisiones/`](docs/decisiones/).

## Estructura del proyecto

```
project.godot        Configuración del proyecto Godot (abrir con Godot 4.3+)
scenes/              Escenas del juego (.tscn) con sus scripts junto a ellas
  main/              Escena principal / mundo
  player/            Jugador: movimiento, combate, stats
assets/              Arte, audio y fuentes
docs/                Diseño y decisiones
  GDD.md             Documento de diseño del juego
  decisiones/        Registro de decisiones (ADRs)
```

## Cómo ejecutar

1. Descarga [Godot 4.3+](https://godotengine.org/download) (versión estándar, no .NET).
2. Abre Godot, elige **Importar** y selecciona el `project.godot` de este repo.
3. Presiona **F5** para ejecutar. Mueve al jugador con **WASD** o las flechas.

## Hoja de ruta

- [x] Fase 0 — Bases: decisiones, GDD, esqueleto del proyecto, movimiento básico.
- [ ] Fase 1 — Combate: apuntado con mouse, ataque básico, esquiva, un enemigo simple.
- [ ] Fase 2 — Co-op temprano: 2 jugadores en LAN (integrarlo antes de que el código crezca).
- [ ] Fase 3 — Mundo y recolección: mapa, recursos (madera, piedra), inventario.
- [ ] Fase 4 — Crafteo: recetas, estaciones de trabajo, herramientas.
- [ ] Fase 5 — Supervivencia: vida, hambre, día/noche.
- [ ] Fase 6 — Primer jefe: mecánicas especiales + desbloqueo de progresión.
