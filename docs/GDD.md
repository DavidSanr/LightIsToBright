# Documento de Diseño — Light Is To Bright

> Documento vivo. Se actualiza a medida que tomamos decisiones.
> Última actualización: 2026-07-27

## 1. Concepto

Survival 2D top-down con estética pixel art donde 1-4 jugadores recolectan
recursos, craftean equipo y desafían jefes con mecánicas únicas. Cada jefe
derrotado desbloquea la siguiente capa de progresión: nuevos materiales,
recetas y zonas del mundo.

**Fantasía del jugador**: llegar débil a un mundo hostil, dominarlo paso a
paso, y demostrar maestría mecánica en cada pelea de jefe.

## 2. Pilares de diseño

Todo lo que agreguemos al juego debe servir al menos a uno de estos pilares.
Si una idea no encaja en ninguno, no entra.

1. **El combate se gana con habilidad, no con números.** Tiempo real,
   posicionamiento, esquivas y timing importan más que el nivel del equipo
   (el equipo ayuda, pero no reemplaza la habilidad). Referencia: Albion.
2. **Los jefes son exámenes.** Cada jefe tiene mecánicas especiales que hay
   que leer y aprender; morir enseña. Vencerlo abre la siguiente etapa del
   mundo. Referencia: Valheim.
3. **Progresar es craftear.** El poder viene de recolectar y fabricar, no de
   comprar ni de subir niveles pasivamente. Referencia: Terraria.
4. **Mejor acompañado.** Todo el juego se puede jugar solo, pero está
   diseñado para brillar en co-op de 2-4 jugadores.

## 3. Mecánicas principales

### 3.1 Movimiento y combate (tipo Albion)

- Movimiento libre en 8 direcciones (WASD), apuntado con el mouse.
- Esquiva/dash con cooldown e invulnerabilidad breve.
- Habilidades activas con cooldown, definidas por el equipo que llevas
  (el arma define tus habilidades, como en Albion).
- Telegrafiado claro: los ataques enemigos muestran su área antes de golpear.

### 3.2 Supervivencia

- Vida y hambre como stats base (definir después si hay más: energía, frío…).
- Ciclo día/noche: la noche es más peligrosa.
- Muerte con penalización a definir (¿tirar inventario tipo Terraria/Valheim?).

### 3.3 Recolección y crafteo

- Recursos por tiers: los primeros a mano, los avanzados requieren
  herramientas que solo se desbloquean tras vencer jefes.
- Estaciones de trabajo (mesa de crafteo, forja, …) que amplían recetas.
- Inventario limitado para forzar decisiones.

### 3.4 Jefes y progresión (tipo Valheim)

- El mundo se organiza en etapas/biomas, cada una cerrada por un jefe.
- Cada jefe tiene 2-3 mecánicas especiales propias que hay que resolver
  (no solo "pegar más fuerte"): fases, invocaciones, zonas del suelo,
  patrones que castigan quedarse quieto, etc.
- Vencer un jefe desbloquea de forma explícita: un material nuevo, una
  herramienta nueva, y acceso viable a la siguiente zona.
- Los jefes se invocan intencionalmente (altar/ofrenda), no por sorpresa:
  el grupo decide cuándo está listo.

### 3.5 Co-op (2-4 jugadores)

- Modelo host-cliente (un jugador hostea, listen server).
- Mundo compartido: recursos, construcciones y progreso de jefes son del mundo.
- El loot de jefes debe repartirse de forma que nadie se quede sin su desbloqueo.

## 4. Estética

- Pixel art 2D top-down. Referencias: Stardew Valley (calidez, legibilidad),
  Terraria (variedad de items y enemigos).
- Resolución base y tamaño de tile: **a definir** (candidato: tiles de 16px,
  ventana lógica de 640×360 escalada).

## 5. Preguntas abiertas

Cosas que decidiremos más adelante, en orden aproximado de urgencia:

- [ ] ¿El mundo es generado proceduralmente (Terraria/Valheim) o diseñado a mano (Stardew)?
- [ ] Sistema de habilidades: ¿cuántos slots? ¿atadas 100% al arma como Albion?
- [ ] Penalización de muerte exacta.
- [ ] ¿Construcción de base libre (colocar muros/estructuras) o solo estaciones?
- [ ] Cantidad de jefes para una primera versión jugable (candidato: 3).
- [ ] Nombre final del juego y su relación con el título "Light Is To Bright".
