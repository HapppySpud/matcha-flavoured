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
			"minecraft:item_model": "matcha:meat_pizza",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.meat_pizza"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030\uE030\uE030\uE030\uE030",\
					"color": "red",\
					"italic": false\
				},\
				{\
					"translate": "effect.kleispack.strength",\
					"with": ["3:00"],\
					"color": "#e65f33",\
					"italic": false\
				}\
			],\
			"!minecraft:food": {},\
			"minecraft:consumable": {\
				"consume_seconds": 1.6,\
				"has_consume_particles": true,\
				"on_consume_effects": [\
					{\
						"type": "minecraft:apply_effects",\
						"effects": [\
							{\
								"id": "minecraft:regeneration",\
								"amplifier": 2,\
								"duration": 120,\
								"show_particles": false,\
								"show_icon": false\
							},\
							{\
								"id": "minecraft:strength",\
								"amplifier": 0,\
								"duration": 3600,\
								"show_particles": false,\
								"show_icon": true\
							}\
						]\
					}\
				]\
			}\
		}\
	}\
}\


tag @s add foodChecked