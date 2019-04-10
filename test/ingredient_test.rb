require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'

class IngredientTest < Minitest::Test

  def setup
    @salt = Ingredient.new("Salt", "tsp", 0)
  end

  def test_ingredient_exists
    assert_instance_of Ingredient, @salt
  end

  def test_ingredient_can_have_a_name
    assert_equal "Salt", @salt.name
  end

  def test_ingredient_can_have_a_unit
    assert_equal "g", @salt.unit
  end

  def test_ingredient_can_have_calories
    assert_equal 0, @salt.calories
  end
end
