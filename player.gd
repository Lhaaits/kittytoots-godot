extends RigidBody2D

@export var up_factor = 100
@export var fart_scene: PackedScene
var fart_frame: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#var fart: AnimatedSprite2D = fart_scene.instantiate()
	#var current_animation : String = fart.animation
	#var sprite_texture : Texture = fart.frames.get_frame(current_animation, 0)
	#print(sprite_texture.get_size())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func _input(event):
	if event.is_action_pressed("fart"):
		print_debug("farted")
		set_linear_velocity(Vector2.UP * up_factor)
		var fart: AnimatedSprite2D = fart_scene.instantiate()
		fart.position   = get_node("Kitty/Butt").position + Vector2(40, -40)
		add_child(fart)
