import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.inworldcrafting.FluidToItem;

// mud recipe
FluidToItem.transform(<biomesoplenty:mudball>, <liquid:water>, [<betterwithmods:dirt_pile>], true);
// best durable twine deal
FluidToItem.transform(<pyrotech:material:26>*24, <liquid:wood_tar>, [<pyrotech:material:14>*8], true);
// ground netherrack to nether sludge
FluidToItem.transform(<betterwithmods:material:35>, <liquid:water>, [<betterwithmods:material:15>], false);
FluidToItem.transform(<betterwithmods:material:35>, <liquid:blood>, [<betterwithmods:material:15>], false);
FluidToItem.transform(<betterwithmods:material:35>, <liquid:lava>, [<betterwithmods:material:15>], false);
// ground fiery netherrack to fiery sludge
FluidToItem.transform(<contenttweaker:fiery_sludge>, <liquid:water>, [<contenttweaker:ground_fiery_netherrack>], false);
FluidToItem.transform(<contenttweaker:fiery_sludge>, <liquid:blood>, [<contenttweaker:ground_fiery_netherrack>], false);
FluidToItem.transform(<contenttweaker:fiery_sludge>, <liquid:lava>, [<contenttweaker:ground_fiery_netherrack>], false);