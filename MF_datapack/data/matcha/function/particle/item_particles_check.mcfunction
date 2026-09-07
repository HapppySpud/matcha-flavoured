# First mark it as checked
tag @s add particle_checked

# Now give it a type tag
execute if predicate matcha:items/is_ender_eye run tag @s add particle_ender_eye
execute if predicate matcha:items/is_divine_fragment run tag @s add particle_divine_fragment
execute if predicate matcha:items/is_crystal_heart run tag @s add particle_crystal_heart
execute if predicate matcha:items/is_nether_star run tag @s add particle_nether_star
execute if predicate matcha:items/is_blaze_powder run tag @s add particle_blaze_powder

# Also apply no grav
# I could have made "item_particle_apply_ender_eye" to comgine no grav with the tag adding, but these dont run every tick so we can be a bit lazy here
execute if predicate matcha:items/is_ender_eye run function matcha:particle/apply_no_grav
execute if predicate matcha:items/is_nether_star run function matcha:particle/apply_no_grav
