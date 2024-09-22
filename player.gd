extends RigidBody2D

@export var up_factor = 100
@export var fart_scene: PackedScene
var fart_frame: Vector2


func _process(delta):
	var screen_size = get_viewport_rect().size
	if position.y > screen_size.y + 300 || position.y < -400:
		position.y = screen_size.y/2
		set_linear_velocity(Vector2(0,0))

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _input(event):
	if event.is_action_pressed("fart"):
		set_linear_velocity(Vector2.UP * up_factor)
		var fart: AnimatedSprite2D = fart_scene.instantiate()
		fart.position   = get_node("Kitty/Butt").position + Vector2(40, -40)
		add_child(fart)
