extends ActionLeaf

func tick(actor, blackboard):
	var target_position = blackboard.get("target_position")
	if target_position:
		actor.move_towards_position(target_position, blackboard.get("delta"))
		# if i want to stop the sprite from overlapping, i actually have to use a condition leaf before this to prevent this code from running.
		if actor.global_position.distance_to(target_position) < 30:
			return SUCCESS
	return RUNNING
