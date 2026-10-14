data modify entity @s Offers.Recipes append value \
{\
	"max_uses": 1,\
	"sell": {\
		"count": 1,\
		"id": "minecraft:emerald"\
	},\
	"buy": {\
		"count": 8,\
		"id": "minecraft:poisonous_potato",\
		"components": {\
			"minecraft:item_model": "matcha:tricero_chicken_nugget",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.tricero_chicken_nugget"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030",\
					"color": "red",\
					"italic": false\
				}\
			],\
			"!minecraft:food": {},\
			"minecraft:consumable": {\
				"consume_seconds": 0.8,\
				"has_consume_particles": true,\
				"on_consume_effects": [\
					{\
						"type": "minecraft:apply_effects",\
						"effects": [\
							{\
								"id": "minecraft:regeneration",\
								"amplifier": 2,\
								"duration": 24,\
								"show_particles": false,\
								"show_icon": false\
							}\
						]\
					}\
				]\
			}\
		}\
	}\
}\


tag @s add foodChecked