#### Credits
- Hashiru: Optimisations
- NamlessJU: Various coding things, translations
- Nat: Translation project lead, and other stuff
- Imtlx: New Angler's Almanac, Fishing Sounds, Translation, and Github help
- Vee Vaicekauskas: Background musics (Check out their bandcamp!: https://par4.bandcamp.com/)
- DeBlezyBestie: Music Discs (Check out their YT!: https://www.youtube.com/@deblezyboi)
- Bingbongbooper: Food Ideas (Their YT!: https://www.youtube.com/@bingbongbooper)
- HapppySpud: Nether World Gen Gravel Remover, Post-Smithing Enchants, Random Asylum Seekers
- All of the translation volunteers
- Thank you so much everyone!


This symbol (👥) means the feature was changed/added per community feedback, or brought to attention by community bug reporters.
This symbol (💻) means the feature was changed/added by community code contributors.
This symbol (🖌️) means the art was added by community artists (music is art)

### Major Additions and Changes 
* Electrum & Adamant Reworks (See Below)
- New Intrinsic/Effect Icons! (They look awesome, 💻/🖌️, Voxybuns)
### Tweaks & Small Additions 
- Enderman can only pick up melon, pumpkins, and TNT (💻, Linkershim)
- Multiplayer support improvements! (💻, Linkershim)
- Trim Colours added
    * Yet to add: Patina (green), Electrum, Shakudo, Hepatizon
- Buffed Sturdy Leather's Safe Fall Distance (1 -> 2)
- Sturdy Leather can now be repaired with tattered leather
- Feather Falling is better now (base damage reduction 12% -> 24%; max damage reduction 48% -> 72%)
- Heart Decrementing is now only local not global (Per player not per world, I made this imagining a small group of friends playing together. Not large servers, this change was made to help with that, difficulty is still set at 5 hearts, but since this can be changed I dont think its a big issue)
- Opal Earrings now only give Conduit Power when in water (quick patch job probably needs optimisation)
- Zephyr enchantment reworked so that its 3 levels (👥💻, freshdoktor)



#### Cooking Changes & Additions 

#### Electrum & Warding
- Netherite and Electrum count for piglin-safe armours (👥, CHECK WHO SUGGESTED THIS)
- Electrum Equipment can no longer burn in lava or fire (since its technically netherite now)
- Warding now "Stacks" with others of its same "type" (that sounds confusing, let me explain)
    * If you hold a ✟ 1 item in your mainhand, and a ✟ 2 in your off-hand, it will apply a ✟ 3 level effect
    * This cannot exceed ✟ 3 without electrum armour, ✟ 4 is reserved for the electrum set bonus effect
    * ✟ 4 has other benefits, it can slow husks and even pierce copper armour's warding resistance
    * **Wearing** **✟** 1 and **holding** ✟ 1 will not create a ✟ 2 effect, ✟ always prefers to check armour over held items.
    * So If you hold a ✟ 3 and are wearing **✟** 2, it will have a ✟ 3 effect. If you are wearing **✟** 3 and holding ✟ 2, will will have a ✟ 3 effect
    * Some minor things have been changed, like the particle effect working on babies, unique particles for slowness v damage, and the way warding works, no longer constant, instead running on a timer
    * ✟ 1 & 2 - effect/1s
    * ✟ 3 & 4 - effect/0.5s
- Warding removed from Electrum Tools, the focus should be on their Fortune properties
- Warding Shield nerfed from ✟ 2 -> ✟ 1 since warding now stacks

#### Adamant & DOOM!
- Adamant's intrinisc has been reworked into DOOM! (👥, CHECK WHO SUGGESTED THIS, AND EMAIL IF ITS OKAY TO CREDIT)
- Doom is an intrinic of adamant armour, which clears weakness every three seconds from nearby mobs, when the effect is cleared, it deals armour-piercing damage
- 𐕣 3 -> 1.5 hearts ; 𐕣 16 (Full set + Bonus) -> 8 hearts
    * These numbers will likley be changed when I get some more feedback
- Adamant's Weapon intrinic applies weakness to mobs
- Adamant's Tool intrinsic auto-smelts mined blocks
- Yes, this means using tipped weakness arrows is a really useful thing now, but I'll add a better recipe for that later (A way to get lingering potions I think)
- I think this fits Adamant's apocryphal title much more, and ties in with its hell-based theming

#### Design Decisions/Ethos Moving Forward
- Dolabras are shifting from being treated as an Axe (weapon), Axe (tool), and Pickaxe hyrbid to an Axe (tool) and Pickaxe hyrbid. So damage will go down for all of them, weapon-based enchants removed, and tool-based enchants improved
- A tier's armour, tool, and weapon intriniscs should be more varried and distinct. This will be the ethos going forward. (Look at Adamant for the best example of this)


### Bugs
#### Multiplayer Bugs
- 
#### General
- "Ophaned" villagers can only be children (💻, HapppySpud)
- Fortune now works on: Tomatoes, Glow berry vines, Chorus Plant (I think some of this was vanilla-intended, but I added it in regardless)
- Warding's (✟ x) effects were inconsistent at various levels, this was fixed
- Earrings no longer give knockback resistance
#### Lang
- Warding Shield, Sword, Silver Sword now uses translate
#### Recipe Unlocks Fixed



#### Texture Changes
- Removed Redstone Particles
- Poplar Leaves, Log & Plank textures added
- All Vertical Slab textures added (👥, specifically barce & fwhip's video)

#### Removed 

### Technical Changes 
- Moved all assets and data into "matcha" namespace. Main no longer exists (Technically it does for enchantment updates but it will be removed entirely soon)


----------------------------------------------------------------------------------------------------------------------------------------------------------------
THESE ARE MY NOTES THEY AREN'T IMPORTANT BUT IM NOT PUTTING IT IN ANOTHER DOC
----------------------------------------------------------------------------------------------------------------------------------------------------------------

## Before Release
- Add All of Imtlx' biome sprites
   - Pale Garden
   - Deep Dark
   - Sulfur Caves
- Add { "text": ": " }, to all of junk item desc with only in biome text?

# Scoreboards to be removed
- apotropaic

# on_first_load
- Use a scoreboard to determine if its really the first load
- If it is, then reset the adv and minimum heart score
- Cleanup first load with advancements and things. Seperate the world-dependant scoreeboards from the player dependant ones. and Have a way for newly added scoreboards to be called for without reseting things
- Remove all unused scoreboards
- Double check the code changes that guy did, this may no longer be applicable

# Heart decrementing system
- Still needs work, I forgot where I left off, It needs to be player-depedant rather than world dependant bc people want it that way idk

# moving Changes
- Maake all curry stocks spawn eggs
- Make Phantom Membrane spawn egg
- Change Electrum?

# BUGS
- Update Abbey LT to have the good Abbey disc
- Didn't update Pack mcmeta
- REMOVE WITH SONGS
- Would minecraft:wake_up_from_sleep work as a marker?
- Add credits for all the new commit things in github
- Check if warding enchants still used, and if so replace undead tag with warding targets tag
- Add Topaz night vision
- Poplar leaves crafting needs to be added to adv
- The Advancements for the special elytras currently dont trigger on intem in inventory/wearing the item nor crafting either of the items?
- if you GAINED max hearts between achievements it thinks you've lost yet another heart.
- Change freezing water to use on surface predicate
- Abbey background track frquency too high? (It should be the same rate as everything else)
- Add predicate for surface spawn that excludes structures
- When running on mud brick slabs with traversal boots, when I jump I get the speed boost, but when I just run on it normally I don't get the speed boost
- Villager Gift LT (Toolsmith give stone tools, laaame)
- OAK LEAF and dark oak fortune and apple drop LT not updated
- Bamboo PLanks still not craftable?


### Electrum
- Fortune III should come applied, but Fortune III should be attainble from other sources (Craftable Electrum intrinsic, maybe call it something else? like an intrinsic...book)
- Intrinisc Book
    * Have tooltip with:
    * Incompatible with: Fortune
So if more intrinisc books are added, they can have exlusions, like smelting for example
    * Incompatible with: Silk Touch, Warding
- OH MY GOD WITH DRAGON'S BREATH YOU CAN EXTRACT AN INTRINSIC


### Trims
- Patina
- Shakudo
- Hepatizon
- Silver
- Electrum


## Rebalancing Health Difficulty (Started this but never finished)
- Let current minimum hearts be per player instead of per world...but how we could track advancement things? 
- Current min could be its own scoreboard, and maybe the advncement would lower the score every time they got a new thing
- So scoreboart objectives Current Minimum
- Each player has their own
- Advnacement runs a function (same function for all advancements)
- 



## Langs
"options.difficulty.peaceful.info"
"options.difficulty.easy.info"
"options.difficulty.normal.info"
"options.difficulty.hard.info"


# Abbey Rework
- Replace some abbey boon rooms with shard instead of crystal hearts (Or spawners)
- Abbey Overhaul Build needs to be done before we can move forward with this.

### Advancements
- Restore their memory, of what they used to be (Echoes: Restore an Echo Shard's memory)
- Child of Moros: Smith Full Adamant Set 
- Harbinger of Fate: Smith Adamant Elytra 

# Small Additions
- Lilypad cloning
- Increase rein amount in pale graden fishing
- Potatoes and Molasses
- French Fries
- Jelly/Jam Bread (Or PBJ without the PB)
- Music Disc Crafting
- Lilypad cloning
- Craftable Thorns
- Add Cinnabar and Sulfur, dripstone, raw copper to dripstone caves, Badlands raw gold, deep dark, disc fragments, to fishing trash
- Vertical planks :\
- Increase resin amount in pale graden fishing
- Add Cinnabar and Sulfur, dripstone, raw copper to dripstone caves, Badlands raw gold, deep dark, disc fragments, to fishing trash
- Craftable Thorns

### Suggestions
- Fermented Spider eye secret meal
- New paintings (with hints!)
- Bag of Sugar!
- ADV: Restore its memory, of what it used to be (Echoes: Restore an Echo Shard's memory)
- Shields
    - Steel shield: a normal shield but with high durability/unbreaking enchant attached
    - Shakudo shield: prevents you from splash potion effects being applied to you if held up (looking at witches), could also give a small amount of magic res as a bonus.
    - Hepatizon shield: removes movement speed penalty when held up.
    - Electrum shield: the same warding effects as current warding shield but blocking attacks from undead monsters deals damage to them so they will die even faster.
    - Adamantium shield: deals a very small dmg to the attacker when blocking his dmg, it works on all types of enemies but the damage is way lower than electrum shield, could also come with increased durability/unbreaking.
- Cold biomes (and oceans) should have better loot due to freezing water
- Rebalance obol to be more rare in chests? Trial chambers esp...idk

# Medium Additions
- "Have recipes or hints toward features appear in abandoned camp loot pools, or possibly other loot pools as well.
- Have spawners (aside from dungeons, wait no LT can't read entity data...)
    * I wanted to have a way for spawners to make mobs that won't drop anything, by spawning them with a tag
    * But I tag can't influence loot tables I dont think.

While much advamcement has been made toward making the learning process of the pack much more streamlined, encouraging players to explore in the hopes of learning more esoteric or even baseline batapack knowledge may be worthwhile. Little notes adding lore, or explaining mechanics; the diary of a chef going on about a recipe or a miner speaking about finding silver hugh up in the mountains."
- Cats traded by farmer?
- Wandering Trader trade more than just village maps


# Adv
- Get Full Health Advancement
- Craft a secret weapon advancemnt


## Textures
- Chiseled Sandstone
- All beds are gone :c
- Cactus Pot
- Azalea Pot
- Chest on boat texture n boat texture
- Change Ender chest to be Eye

## Stretch
- Variant Villages to match with villager stories
- Knowledge books??
- Fishing Index (advancemnet only obtained by fisherman villager, with its own subtab with all the fish)
- Sherds for Enchants?? From Archaeologist
- Maps from Archaeologist based on books (I think Paradise Lost going to Abbey makes sense)
- Upgraded horns for different mobs
- Armour Trim fix-up
- Polish-up abbey, more surrounding buildings, proper downstairs entrance.
    - Actually I think full redesign, manage spawners better. More buildings, more uses for the Copper Eye
- Polish up papal outpost, give barrel a LT
- Quartz ore gen, sulfur ore gen, make sulurfous quartz something else?
### Ore Gen
- Coal high in swamps
- Sulfur high in sulfur caves
- Iron high in Cold Biomes


## Wither Rework
- An attack that makes you loose a crystal heart
