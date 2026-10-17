data modify entity @s Offers.Recipes append value \
{\
	"maxUses": 1,\
	"sell": {\
		"count": 1,\
		"id": "minecraft:emerald"\
	},\
	"buy": {\
		"count": 1,\
		"id": "minecraft:poisonous_potato",\
		"components": {\
			"minecraft:item_model": "matcha:green_curry",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.green_curry"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030\uE030\uE030\uE030\uE030\uE030\uE030\uE030\uE030\uE030",\
					"color": "red",\
					"italic": false\
				},\
				{\
					"translate": "effect.kleispack.speed_2",\
					"with":["30:00"],\
					"color": "#37cafb",\
					"italic": false\
				}\
			],\
			"!minecraft:food": {},\
			"minecraft:consumable": {\
				"consume_seconds": 3.0,\
				"animation": "drink",\
				"has_consume_particles": true,\
				"on_consume_effects": [\
					{\
						"type": "minecraft:apply_effects",\
						"effects": [\
							{\
								"id": "minecraft:regeneration",\
								"amplifier": 2,\
								"duration": 240,\
								"show_particles": false,\
								"show_icon": false\
							},\
							{\
								"id": "minecraft:speed",\
								"amplifier": 1,\
								"duration": 36000,\
								"show_particles": false,\
								"show_icon": true\
							}\
						]\
					}\
				]\
			},\
			"minecraft:use_remainder": {\
				"id": "minecraft:bowl"\
			}\
		}\
	}\
}\


tag @s add foodChecked