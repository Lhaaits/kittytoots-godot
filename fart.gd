extends AnimatedSprite2D

@export var fart_color: Color
@export var move_speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	self_modulate = fart_color
	play()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2.LEFT * delta * move_speed


func _on_animation_finished():
	queue_free()
