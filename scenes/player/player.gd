extends CharacterBody2D
## Movimiento base del jugador: 8 direcciones + dash con cooldown.
## El apuntado con mouse y las habilidades llegan en la Fase 1.

const SPEED := 220.0
const DASH_SPEED := 600.0
const DASH_DURATION := 0.15
const DASH_COOLDOWN := 0.8

var _dash_time_left := 0.0
var _dash_cooldown_left := 0.0
var _dash_direction := Vector2.ZERO


func _physics_process(delta: float) -> void:
	_dash_cooldown_left = maxf(_dash_cooldown_left - delta, 0.0)

	if _dash_time_left > 0.0:
		_dash_time_left -= delta
		velocity = _dash_direction * DASH_SPEED
	else:
		var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
		velocity = input_dir * SPEED

		if Input.is_action_just_pressed("dash") and _dash_cooldown_left == 0.0 and input_dir != Vector2.ZERO:
			_dash_direction = input_dir
			_dash_time_left = DASH_DURATION
			_dash_cooldown_left = DASH_COOLDOWN
			velocity = _dash_direction * DASH_SPEED

	move_and_slide()
