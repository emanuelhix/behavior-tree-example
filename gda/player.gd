extends Node2D

export (NodePath) var bt_root
export (Texture) var hand_texture_a
export (Texture) var face_texture_a
export (Texture) var hand_texture_b
export (Texture) var face_texture_b
const is_bird_enabled = "is_bird_enabled"
var blackboard = null

func _ready():
	blackboard = get_node(bt_root).get_blackboard()
	blackboard.set(is_bird_enabled, false)

func _process(delta):
	if blackboard:
		if Input.is_action_just_pressed("enable_bird"):
			blackboard.set(is_bird_enabled, not blackboard.get(is_bird_enabled))
			var face = self.find_node("Face")
			if face:
				var hand = face.find_node("Hand")
				if hand:
					if blackboard.get(is_bird_enabled):
						hand.texture = hand_texture_b
						face.texture = face_texture_b
					else:
						hand.texture = hand_texture_a
						face.texture = face_texture_a

func _physics_process(delta):
	self.global_position = get_viewport().get_mouse_position()
