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
			"minecraft:item_model": "matcha:ice_cream",\
			"minecraft:item_name": {\
				"translate": "item.kleispack.ice_cream"\
			},\
			"minecraft:lore": [\
				{\
					"text": "\uE030\uE030\uE030\uE030",\
					"color": "red",\
					"italic": false\
				},\
				{\
					"translate": "desc.kleispack.cleanses_maleffect",\
					"color": "gray",\
					"italic": false\
				}\
			],\
			"!minecraft:food": {},\
			"minecraft:consumable": {\
				"consume_seconds": 1.3,\
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
							}\
						]\
					},\
					{\
						"type": "minecraft:remove_effects",\
						"effects": "#matcha:harmful"\
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