# This function is run every tick by players using Traversal on a valid block

# The values in this function can be adjusted to change how lenient Traversal is for paths of mixed blocks (valid and invalid)

# If the buffer is less than it's maximum (20 ticks) increase it's value
execute unless score @s TraversalBuffer matches 20.. run scoreboard players add @s TraversalBuffer 2
