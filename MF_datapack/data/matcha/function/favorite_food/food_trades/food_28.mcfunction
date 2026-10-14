data modify entity @s Offers.Recipes append value \
{\
	"max_uses": 1,\
	"sell": {\
		"count": 1,\
		"id": "minecraft:emerald"\
	},\
	"buy": {\
		"count": 4,\
		"id": "minecraft:poisonous_potato",\
		"components": {\
			"minecraft:item_model": "matcha:puerquito",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.puerquito"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030\uE030",\
					"color": "red",\
					"italic": false\
				},\
				{\
					"translate": "effect.kleispack.regeneration",\
					"with": ["0:30"],\
					"color": "#e85e8f",\
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
								"duration": 48,\
								"show_particles": false,\
								"show_icon": false\
							},\
							{\
								"id": "minecraft:regeneration",\
								"amplifier": 0,\
								"duration": 200,\
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