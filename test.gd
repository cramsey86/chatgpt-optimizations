class_name Helper


enum EnumReparentOrder {
	TOP,
	BOTTOM,
}

const _INT_MODULO_8_BIT : int = 256


static func _get_int_random(int_seed : int) -> int:
	# Randomize every time to minimize the risk of collisions
	randomize()

	return randi() % int_seed


static func _uuidbin() -> Array:
	# 16 random bytes with the bytes on index 6 and 8 modified
	return [
		_get_int_random(_INT_MODULO_8_BIT), _get_int_random(_INT_MODULO_8_BIT), 
		_get_int_random(_INT_MODULO_8_BIT), _get_int_random(_INT_MODULO_8_BIT),
		_get_int_random(_INT_MODULO_8_BIT), _get_int_random(_INT_MODULO_8_BIT), 
		((_get_int_random(_INT_MODULO_8_BIT)) & 0x0f) | 0x40, _get_int_random(_INT_MODULO_8_BIT),
		((_get_int_random(_INT_MODULO_8_BIT)) & 0x3f) | 0x80, _get_int_random(_INT_MODULO_8_BIT),
		_get_int_random(_INT_MODULO_8_BIT), _get_int_random(_INT_MODULO_8_BIT),
		_get_int_random(_INT_MODULO_8_BIT), _get_int_random(_INT_MODULO_8_BIT), 
		_get_int_random(_INT_MODULO_8_BIT), _get_int_random(_INT_MODULO_8_BIT),
	]


static func create_uuid() -> String:
	# 16 random bytes with the bytes on index 6 and 8 modified
	var array_uuidbin : Array = _uuidbin()

	return '%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x' % [
		# low
		array_uuidbin[0], array_uuidbin[1], array_uuidbin[2], array_uuidbin[3],

		# mid
		array_uuidbin[4], array_uuidbin[5],

		# hi
		array_uuidbin[6], array_uuidbin[7],

		# clock
		array_uuidbin[8], array_uuidbin[9],

		# clock
		array_uuidbin[10], array_uuidbin[11], array_uuidbin[12], array_uuidbin[13], 
		array_uuidbin[14], array_uuidbin[15]
	]


static func delete_node_children(node) -> void:
	for child in node.get_children():
		child.queue_free()


static func get_float_random(float_min : float, float_max : float) -> float:
	randomize()
	
	return randf() * float_max + float_min


static func reparent_node(tree, 
	node, 
	newParentNode, 
	enum_order : Helper.EnumReparentOrder) -> void:
		
	node.get_parent().remove_child(node)
	# Give the Removal Time to Finish
	await tree.create_timer(0.1).timeout
	#newParentNode.call_deferred("add_child", node)
	newParentNode.add_child(node)
	match enum_order:
		Helper.EnumReparentOrder.TOP:
			#newParentNode.call_deferred("move_child", node, 0)
			newParentNode.move_child(node, 0)
		_:
			pass
	

static func create_grid(int_rows : int, int_columns : int, default_value) -> Array:
	var array_grid := []
	
	for int_row in range(int_rows):
		array_grid.append([])
		array_grid[int_row].resize(int_columns)
		
		for int_column in range(int_columns):
			array_grid[int_row][int_column] = default_value
			
	return array_grid
