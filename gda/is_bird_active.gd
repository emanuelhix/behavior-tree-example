extends ConditionLeaf

export (String) var target_key
export (bool) var target_val = true

func tick(actor, blackboard):
	var bird_active = blackboard.get(target_key)

	if bird_active:
		return FAILURE
		
	return SUCCESS
