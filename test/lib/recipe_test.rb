require 'test_helper'

describe "Recipe" do

  describe "initialize" do

  end

  describe "self.all_recipes" do
    it "takes a search" do
      VCR.use_cassette("recipes") do
        Recipe.all_recipes("chicken")
      end
    end

    it "requires a search before searching" do
    end

    it "returns Recipe objects" do
    end

    it "deals with a bad search" do
      # or should this go in the controller test?
    end
  end

end
