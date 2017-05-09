require 'test_helper'

describe "Recipe" do

  describe "initialize" do
    it "creates a new recipe" do
      recipe_hash_params = {
        uri: "d38d01540acb03fba45e4ac2660627ac",
        label: "Jerk Chicken",
        image: "onejerkofachicken.jpg",
        url: "morechickenplease",
        health_labels: ["Gluten-Free, Soy-Free"],
        ingredient_lines: ["chicken", "ingredients"]
      }
      new_recipe = Recipe.new(recipe_hash_params)
      new_recipe.label.must_equal "Jerk Chicken"
      new_recipe.uri.must_equal "d38d01540acb03fba45e4ac2660627ac"
    end

    it "throws an error with bad data" do
      proc { Recipe.new }.must_raise ArgumentError
    end
  end

  describe "self.all_recipes" do
    it "takes a search and returns recipes" do
      VCR.use_cassette("recipes") do
        Recipe.all_recipes("chicken")
      end
    end

    it "raises an error if the search result is invalid or doesn't have results" do
      VCR.use_cassette("recipes") do
        proc { Recipe.all_recipes() }.must_raise ArgumentError
      end
    end
  end

end 
