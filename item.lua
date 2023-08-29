local basefuel = table.deepcopy(data.raw["item"]["solid-fuel"])

basefuel.name = "base-fuel"
basefuel.icons = {
  {
    icon = basefuel.icon,
  },
}
basefuel.fuel_value = "1.8MJ"

local recipe = table.deepcopy(data.raw["recipe"]["solid-fuel-from-light-oil"])
recipe.enabled = true
recipe.name = "base-fuel-craft"
recipe.category = "crafting"
recipe.ingredients = {}
recipe.results = {{
  name = "base-fuel",
  amount = 1,
}}

data:extend({basefuel,recipe})