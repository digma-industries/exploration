extends CharacterBody2D
class_name Player

### STATS ###
# Stats can change from items/upgrades/temporary buffs
# top speed
var speed := 48.0
# max energy
var max_energy := 100.0
# max awake
var max_awake := 100.0
# how much awake you lose per physics frame
var awake_delta := 0.01

### STATE ###
# State is constantly changing
# energy is expended by performing tough actions like attacking/jumping/being hit
var energy := max_energy
# awake is constantly drained
var awake := max_awake

func _ready() -> void:
  GameState.player = self


func _physics_process(delta: float) -> void:
  process_movement(delta)
  process_eepiness(delta)


func process_movement(_delta: float) -> void:
  var x_move := Input.get_axis("move_left", "move_right")
  var y_move := Input.get_axis("move_up", "move_down")
  velocity = Vector2(x_move, y_move).normalized() * speed

  move_and_slide()


func process_eepiness(_delta: float) -> void:
  awake -= awake_delta
