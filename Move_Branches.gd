extends Node2D
@export var speed = 400
var endPoint = Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	var screenSize = get_viewport().get_visible_rect().size
	endPoint = Vector2(-screenSize.x, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position.move_toward(endPoint, delta * speed)
