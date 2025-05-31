extends CharacterBody2D

### STATS ###
# top speed
var speed := 48.0

func _physics_process(delta: float) -> void:
  _process_movement(delta)

func _process_movement(_delta: float) -> void:
  var x_move := Input.get_axis("move_left", "move_right")
  var y_move := Input.get_axis("move_up", "move_down")
  velocity = Vector2(x_move, y_move).normalized() * speed

  move_and_slide()
