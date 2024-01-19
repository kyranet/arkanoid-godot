extends Node

@export var x_velocity: int
@export var y_velocity: int

# update movement based on velocities
# on collision
# if vertical collisions, flip y_velocity
# if horizontal collisons, flip x_velocity
