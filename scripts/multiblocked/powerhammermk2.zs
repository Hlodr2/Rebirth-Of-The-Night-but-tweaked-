#loader multiblocked

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

var definition as ComponentDefinition = MBDRegistry.getDefinition("dimensionalpower:power_hammer_mk2");
var pwrhmrmk2 = definition as ControllerDefinition;

val PowerHammerItemOutputs = [
    <minecraft:brick>*4, 
    <contenttweaker:brick_coade>*4, 
    <contenttweaker:masonry_brick>*4, 
    <minecraft:netherbrick>*4, 
    <netherex:fiery_netherbrick>*4, 
    <biomesoplenty:mud_brick>*4, 
    <betterwithmods:material:39>, 
    <minecraft:prismarine_shard>*3, 
    <minecraft:prismarine_shard>*8, 
    <minecraft:flint>*4, 
    <minecraft:chorus_fruit_popped>*3, 
    <animania:salt>*3, 
    <minecraft:redstone>*2,
    <minecraft:quartz>*2, 
    <contenttweaker:magic_blend>*3, 
    <betterwithmods:material:18>, 
    <betterwithmods:material:18>, 
    <endreborn:item_lormyte_crystal>*2, 
    <endreborn:catalyst>*2, 
    <endreborn:item_shard_obsidian>, 
    <pyrotech:rock:0> * 4, 
    <endreborn:block_entropy_end_stone>, 
    <nyx:cracked_star_block>, 
    <contenttweaker:material_part:36>, 
    <contenttweaker:material_part:29>, 
    <nyx:meteor_dust>, 
    <minecraft:coal:1>*6, 
    <quark:crab_shell>*2, 
    <quark:black_ash>*3, 
    <scalinghealth:crystalshard>*4, 
    <scalinghealth:crystalshard>*3, 
    <scalinghealth:crystalshard>*6, 
    <scalinghealth:crystalshard>*6,
    <betterwithmods:material:51>*16,  
    <pyrotech:material:8>*3, 
    <pyrotech:material:8>*1, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*3, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*2, 
    <pyrotech:material:8>*3, 
    <minecraft:blaze_powder>*3, 
    <minecraft:written_book>.withTag({pages: ["{\"text\":\"And so, the Fellowship lived happily ever after.\\nThe End\"}"], author: "Foreck", title: "Dwarven Measures"}), 
    <quark:glass_shards:0>*4,
    <adpother:vilemist>*8
]  as IItemStack[];

val PowerHammerItemInputs = [
    <contenttweaker:brick_minecraft_clay>, 
    <contenttweaker:brick_minecraft_stone>, 
    <contenttweaker:brick_pyrotech_masonry>, 
    <contenttweaker:brick_minecraft_nether>, 
    <contenttweaker:brick_netherex_fiery>, 
    <contenttweaker:brick_biomesoplenty_mud>,
    <betterwithaddons:whitebrick:2>,
    <minecraft:prismarine>,
    <minecraft:prismarine:1>,
    <betterwithmods:aesthetic:5>,
    <minecraft:purpur_block>,
    <contenttweaker:halite>,
    <pyrotech:material:36>,
    <pyrotech:material:37>, 
    <aether_legacy:ambrosium_block>,
    <undergroundbiomes:sedimentary_stone:4>,
    <contenttweaker:lignite_cobble>,
    <endreborn:block_lormyte_crystal>,
    <endreborn:item_shard_obsidian>,
    <minecraft:obsidian>,
    <minecraft:cobblestone>, 
    <minecraft:end_stone>, 
    <nyx:star_block>,  
    <pyrotech:rock:3>, 
    <contenttweaker:raw_gold>, 
    <nyx:meteor_shard>, 
    <contenttweaker:charcoal_pile>, 
    <harvestcraft:crabrawitem>, 
    <minecraft:skull:1>, 
    <bountifulbaubles:trinketbrokenheart>, 
    <bountifulbaubles:trinketshulkerheart>, 
    <iceandfire:fire_dragon_heart>, 
    <iceandfire:ice_dragon_heart>, 
    <betterwithmods:steel_block>, 
    <undergroundbiomes:fossil_piece:*>, 
    <minecraft:quartz>, 
    <arcanearchives:raw_quartz>, 
    <undergroundbiomes:sedimentary_stone:1>, 
    <undergroundbiomes:metamorphic_stone:3>, 
    <undergroundbiomes:metamorphic_stone:2>, 
    <undergroundbiomes:sedimentary_stone:5>, 
    <undergroundbiomes:sedimentary_stone:0>, 
    <contenttweaker:chalk_cobble>, 
    <undergroundbiomes:metamorphic_cobble:3>, 
    <undergroundbiomes:metamorphic_cobble:2>, 
    <contenttweaker:dolomite_cobble>, 
    <contenttweaker:limestone_cobble>, 
    <quark:blaze_lantern>, 
    <extraalchemy:potion_ring>.withTag({Potion: "minecraft:invisibility"}), 
    <minecraft:glass>,
    <contenttweaker:condensed_vilemist>
] as IItemStack[];

val PowerHammerNumModifier = [
    4, 
    4, 
    4, 
    4,
    4, 
    4,
    4,
    18,
    18,
    8,
    8,
    6,
    2,
    2, 
    16, 
    16, 
    16, 
    8,
    16,
    64,
    3, 
    4, 
    64,  
    4, 
    4, 
    24, 
    4,  
    1, 
    8, 
    12, 
    16, 
    32, 
    32, 
    64, 
    4, 
    16,
    8,
    8,
    8, 
    8,
    8,
    8,
    8, 
    8, 
    8, 
    8, 
    8, 
    16, 
    1,
    1,
    4
] as int[];

val PowerHammerItemOutputs1 = [
    <endreborn:item_raw_endorium>, 
    <contenttweaker:material_part:20>, 
    <contenttweaker:material_part:20>, 
    <contenttweaker:material_part:20>, 
    <contenttweaker:material_part:21>, 
    <contenttweaker:material_part:21>, 
    <contenttweaker:material_part:21>, 
    <contenttweaker:material_part:28>, 
    <contenttweaker:material_part:28>, 
    <contenttweaker:material_part:28>, 
    <contenttweaker:material_part:37>, 
    <contenttweaker:material_part:48>,
    <contenttweaker:material_part:29>, 
    <contenttweaker:material_part:29>, 
    <contenttweaker:material_part:30>, 
    <contenttweaker:material_part:30>,
    <contenttweaker:material_part:30>,  
    <contenttweaker:material_part:43>, 
    <contenttweaker:material_part:43>, 
    <contenttweaker:material_part:43>, 
    <contenttweaker:material_part:38>, 
    <contenttweaker:material_part:27>, 
    <contenttweaker:material_part:23>, 
    <contenttweaker:material_part:23>, 
    <contenttweaker:material_part:23>, 
    <contenttweaker:material_part:22>, 
    <contenttweaker:material_part:22>, 
    <contenttweaker:material_part:22>, 
    <contenttweaker:material_part:25>, 
    <contenttweaker:material_part:26>, 
    <contenttweaker:material_part:44>, 
    <contenttweaker:material_part:44>, 
    <pyrotech:material:25>*6, 
    <pyrotech:material:25>*4, 
    <pyrotech:material:8>*4, 
    <pyrotech:material:8>*4,
    <contenttweaker:material_part:13>
]  as IItemStack[];

val PowerHammerItemInputs1 = [
    <ore:enderpearl>,
    <ore:ingotCopper>, 
    <ore:oreCopper>, 
    <ore:rawOreCopper>, 
    <ore:ingotTin>, 
    <ore:oreTin>, 
    <ore:rawOreTin>,
    <ore:ingotIron>, 
    <ore:oreIron>, 
    <ore:rawOreIron>, 
    <ore:ingotBronze>, 
    <ore:ingotBrass>, 
    <ore:ingotGold>, 
    <ore:oreGold>, 
    <ore:ingotSilver>, 
    <ore:oreSilver>, 
    <ore:rawOreSilver>, 
    <ore:ingotGravitite>, 
    <ore:oreGravitite>, 
    <ore:rawOreGravitite>, 
    <ore:ingotElectrum>, 
    <ore:ingotCrucibleSteel>, 
    <ore:ingotViridium>, 
    <ore:oreViridium>, 
    <ore:rawOreViridium>, 
    <ore:ingotMythril>, 
    <ore:oreMythril>, 
    <ore:rawOreMythril>, 
    <ore:ingotSoulforgedSteel>, 
    <ore:ingotEndorium>, 
    <ore:gemAmbrosium>, 
    <ore:oreAmbrosium>, 
    <ore:barkWood>, 
    <ore:cropKenaf>, 
    <ore:gemRuby>, 
    <ore:gemSapphire>,
    <ore:ingotElectrum>
] as IOreDictEntry[];

val PowerHammerNumModifier1 = [
    16,
    8, 
    4, 
    4, 
    8, 
    4, 
    4,
    12, 
    8, 
    8, 
    16, 
    16, 
    8, 
    4, 
    8, 
    4, 
    4, 
    12, 
    8, 
    8, 
    8, 
    32, 
    12, 
    8, 
    8, 
    48, 
    16, 
    16, 
    64, 
    12, 
    6, 
    4, 
    32, 
    8,
    64, 
    64,
    32
] as int[];

for i, input in PowerHammerItemInputs {
    pwrhmrmk2.recipeMap.start()
    .duration(PowerHammerNumModifier[i] * 10)
    .inputItems(PowerHammerItemInputs[i])
    .inputFluids(<fluid:unstable_soulfire> * ((PowerHammerNumModifier[i] * 10) as int))
    .outputItems(PowerHammerItemOutputs[i])
    .buildAndRegister();
}

for i, input in PowerHammerItemInputs1 {
    pwrhmrmk2.recipeMap.start()
    .duration(PowerHammerNumModifier1[i] * 10)
    .inputItems(PowerHammerItemInputs1[i])
    .inputFluids(<fluid:unstable_soulfire> * ((PowerHammerNumModifier1[i] * 10) as int))
    .outputItems(PowerHammerItemOutputs1[i])
    .buildAndRegister();
}

for i in 0 to 16 {
    pwrhmrmk2.recipeMap.start()
    .duration(10)
    .inputItems(<minecraft:stained_glass>.definition.makeStack(i))
    .inputFluids(<fluid:unstable_soulfire> * 10)
    .outputItems(<quark:glass_shards>.definition.makeStack(i+1) * 4)
    .buildAndRegister();
}
