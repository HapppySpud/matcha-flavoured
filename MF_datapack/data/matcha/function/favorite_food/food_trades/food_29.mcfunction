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
			"minecraft:item_model": "matcha:pumpkin_empanada",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.pumpkin_empanada"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030\uE030\uE030\uE030",\
					"color": "red",\
					"italic": false\
				},\
				{\
					"translate": "effect.kleispack.resistance",\
					"with": ["8:00"],\
					"color": "blue",\
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
								"duration": 96,\
								"show_particles": false,\
								"show_icon": false\
							},\
							{\
								"id": "minecraft:resistance",\
								"amplifier": 0,\
								"duration": 9600,\
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