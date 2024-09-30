extends ActionLeaf

export (Texture) var hand_texture
export (Texture) var face_texture

func tick(actor : Node2D, blackboard):
	var face = actor.find_node("Face")
	if face:
		var hand : Sprite = face.find_node("Hand")
		if hand:
			hand.texture = hand_texture
			face.texture = face_texture
	return SUCCESS
