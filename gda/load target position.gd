extends ActionLeaf

export (String) var blackboard_key = "target_position"
export (NodePath) var other_node

func tick(actor, blackboard):
	if other_node is NodePath:
		other_node = get_node(other_node)
	if other_node:
		blackboard.set(blackboard_key, other_node.global_position)
		return SUCCESS
	return RUNNING
