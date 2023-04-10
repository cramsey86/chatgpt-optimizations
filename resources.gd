class_name Resources
extends Node2D


enum EnumPowerCrystalSpot {
	LEFT,
	RIGHT,
}


var _enum_power_crystal_spot : Resources.EnumPowerCrystalSpot
var _int_power_crystal : int
var _int_power_crystal_base : int
var _int_physical : int
var _int_physical_base : int
var _int_fire : int
var _int_fire_base : int
var _int_nature : int
var _int_nature_base : int
var _int_water : int
var _int_water_base : int
var _int_light : int
var _int_light_base : int
var _int_mystic : int
var _int_mystic_base : int
var _int_shadow : int
var _int_shadow_base : int
var _int_elemental : int
var _int_elemental_base : int


func init():
	self._create()


func _create() -> void:
	self._set_int_power_crystal_base(0)
	self._set_int_physical_base(0)
	self._set_int_fire_base(0)
	self._set_int_nature_base(0)
	self._set_int_water_base(0)
	self._set_int_light_base(0)
	self._set_int_mystic_base(0)
	self._set_int_shadow_base(0)
	self._set_int_elemental_base(0)


func get_int_power_crystal() -> int:
	return self._int_power_crystal


func get_int_physical() -> int:
	return self._int_physical


func get_int_fire() -> int:
	return self._int_fire


func get_int_nature() -> int:
	return self._int_nature


func get_int_water() -> int:
	return self._int_water


func get_int_light() -> int:
	return self._int_light


func get_int_mystic() -> int:
	return self._int_mystic


func get_int_shadow() -> int:
	return self._int_shadow


func get_int_elemental() -> int:
	return self._int_elemental


func set_enum_power_crystal_spot(enum_power_crystal_spot : Resources.EnumPowerCrystalSpot) -> void:
	self._enum_power_crystal_spot = enum_power_crystal_spot
	match self._enum_power_crystal_spot:
		Resources.EnumPowerCrystalSpot.LEFT:
			%PowerCrystal.position = Vector2(-936, 0)
		Resources.EnumPowerCrystalSpot.RIGHT:
			%PowerCrystal.position = Vector2(936, 0)


func _set_int_power_crystal(int_power_crystal : int) -> void:
	self._int_power_crystal = int_power_crystal
	%PowerCrystal/Label.text = str(self._int_power_crystal)


func _set_int_power_crystal_base(int_power_crystal : int) -> void:
	self._int_power_crystal_base = int_power_crystal
	self._set_int_power_crystal(self._int_power_crystal_base)


func _set_int_physical(int_physical : int) -> void:
	self._int_physical = int_physical
	%Physical/Label.text = str(self._int_physical)


func _set_int_physical_base(int_physical : int) -> void:
	self._int_physical_base = int_physical
	self._set_int_physical(self._int_physical_base)


func _set_int_fire(int_fire : int) -> void:
	self._int_fire = int_fire
	%Fire/Label.text = str(self._int_fire)


func _set_int_fire_base(int_fire : int) -> void:
	self._int_fire_base = int_fire
	self._set_int_fire(self._int_fire_base)


func _set_int_nature(int_nature : int) -> void:
	self._int_nature = int_nature
	%Nature/Label.text = str(self._int_nature)


func _set_int_nature_base(int_nature : int) -> void:
	self._int_nature_base = int_nature
	self._set_int_nature(self._int_nature_base)


func _set_int_water(int_water : int) -> void:
	self._int_water = int_water
	%Water/Label.text = str(self._int_water)


func _set_int_water_base(int_water : int) -> void:
	self._int_water_base = int_water
	self._set_int_water(self._int_water_base)


func _set_int_light(int_light : int) -> void:
	self._int_light = int_light
	%Light/Label.text = str(self._int_light)


func _set_int_light_base(int_light : int) -> void:
	self._int_light_base = int_light
	self._set_int_light(self._int_light_base)


func _set_int_mystic(int_mystic : int) -> void:
	self._int_mystic = int_mystic
	%Mystic/Label.text = str(self._int_mystic)


func _set_int_mystic_base(int_mystic : int) -> void:
	self._int_mystic_base = int_mystic
	self._set_int_mystic(self._int_mystic_base)


func _set_int_shadow(int_shadow : int) -> void:
	self._int_shadow = int_shadow
	%Shadow/Label.text = str(self._int_shadow)


func _set_int_shadow_base(int_shadow : int) -> void:
	self._int_shadow_base = int_shadow
	self._set_int_shadow(self._int_shadow_base)


func _set_int_elemental(int_elemental : int) -> void:
	self._int_elemental = int_elemental
	%Elemental/Label.text = str(self._int_elemental)


func _set_int_elemental_base(int_elemental : int) -> void:
	self._int_elemental_base = int_elemental
	self._set_int_elemental(self._int_elemental_base)



