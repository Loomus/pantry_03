class Recipe
  attr_reader :name

  def initialize(name)
    @name = name
    @ingredient_list = {}
  end

  def add_ingredient(ingredient, quantity)
    @ingredient_list[ingredient] = quantity
  end

  def all_ingredients
    @ingredient_list
  end

  def check_quantity(ingredient)
    @ingredient_list.values.count
  end

  def count_calories
    # The keys in this case are ingredient objects which point
    # to a integer representing quantity of the object.
    # Need to access the attribute inside the object.
    # Then add attributes according to the quantity of objects
    # called in the recipe.
    total_calories = @ingredient_list.each do |ingredient, quantity|
      ingredient.each do |ingredient|
        ingredient.calories
      end 
    end
    total_calories
  end
end
