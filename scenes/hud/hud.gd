extends CanvasLayer

const STATUS_TEMPLATE := """Tummy: %d
Awake: %d"""

func _process(_delta: float) -> void:
  update_status()

func update_status() -> void:
  $Status.text = STATUS_TEMPLATE % [
    GameState.player.energy,
    GameState.player.awake
  ]
