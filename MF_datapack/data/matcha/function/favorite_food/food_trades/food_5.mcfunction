data modify entity @s Offers.Recipes append value \
{\
	"maxUses": 1,\
	"sell": {\
		"count": 1,\
		"id": "minecraft:emerald"\
	},\
	"buy": {\
		"count": 1,\
		"id": "minecraft:splash_potion",\
		"components": {\
			"minecraft:item_model": "matcha:bubbling_mead",\
			"minecraft:custom_name": {\
				"translate": "item.kleispack.bubbling_mead",\
				"italic": false\
			},\
			"minecraft:lore": [\
				{\
					"translate": "desc.kleispack.throwable",\
					"color": "gray",\
					"italic": false\
				},\
				{\
					"translate": "effect.kleispack.speed_2",\
					"with":["5:00"],\
					"color": "#37cafb",\
					"italic": false\
				}\
			],\
			"minecraft:max_stack_size": 64,\
			"minecraft:potion_contents": {\
				"custom_color": 15978319,\
				"custom_effects": [\
					{\
						"id": "minecraft:speed",\
						"amplifier": 1,\
						"duration": 6000,\
						"show_icon": true\
					}\
				]\
			},\
			"minecraft:tooltip_display": {\
				"hidden_components": [\
					"minecraft:potion_contents"\
				]\
			}\
		}\
	}\
}\


tag @s add foodChecked