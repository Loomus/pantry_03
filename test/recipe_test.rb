require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def setup
    @chocolate_cake = Recipe.new("Chocolate Cake")
    @salt = Ingredient.new("Salt", "tsp", 0)
    @butter = Ingredient.new("Butter", "cup", 1627)
  end

  def test_recipe_class_exists
    assert_instance_of Recipe, @chocolate_cake
  end

  def test_recipe_can_have_a_name
    assert_equal "Chocolate Cake", @chocolate_cake.name
  end

  def test_ingredients_can_be_added_to_add_ingredient_method
    @chocolate_cake.add_ingredient(@salt, 1)
    expected_1 = {@salt => 1}
    assert_equal expected_1,  @chocolate_cake.all_ingredients

    @chocolate_cake.add_ingredient(@butter, 2)
    expected_2 = {
      @salt => 1,
      @butter => 2
    }
    assert_equal expected_2, @chocolate_cake.all_ingredients
  end

  def test_if_check_quantity_method_can_count_for_given_ingredient
    @chocolate_cake.add_ingredient(@salt, 1)
    assert_equal 1, @chocolate_cake.check_quantity(@salt)
  end

  def test_if_recipe_can_calculate_total_number_of_calories
    @chocolate_cake.add_ingredient(@salt, 1)
    @chocolate_cake.add_ingredient(@butter, 2)

    assert_equal 1627, @chocolate_cake.count_calories
  end
end
