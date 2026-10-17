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
			"minecraft:item_model": "matcha:stroganoff",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.stroganoff"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030\uE030\uE030\uE030\uE030\uE030\uE030\uE030",\
					"color": "red",\
					"italic": false\
				}\
			],\
			"!minecraft:food": {},\
			"minecraft:consumable": {\
				"consume_seconds": 1.8,\
				"has_consume_particles": true,\
				"on_consume_effects": [\
					{\
						"type": "minecraft:apply_effects",\
						"effects": [\
							{\
								"id": "minecraft:regeneration",\
								"amplifier": 2,\
								"duration": 192,\
								"show_particles": false,\
								"show_icon": false\
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