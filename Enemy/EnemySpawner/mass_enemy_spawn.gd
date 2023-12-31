extends Marker2D

var EnemyScene: PackedScene = preload("res://Enemy/Skeleton/Skeleton.tscn")

func _ready():
	spawn_enemy()
	$Sprite2D.visible = false
	
func spawn_enemy():
	var spawn_point = self.global_position
	
	var enemy_instance = EnemyScene.instantiate()
	add_child(enemy_instance)
	
	enemy_instance.global_position = spawn_point
