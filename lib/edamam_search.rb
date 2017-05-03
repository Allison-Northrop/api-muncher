require 'HTTParty'
class EdamamSearch

  BASE_URL = 'https://api.edamam.com/search'
  # attr_reader :search
  #
  # def initialize(search)
  #   @search = search
  # end

  def self.all_recipes(search)
    #the recipes returned after the search
    #this hash will have the name of the recipe, the photo link *and maybe link to
    recipes_searched = []
    #takes the base url, the app id, the app key(token), the search(fromt the user params) and adds the gluten free params
    url ="#{BASE_URL}?app_id=#{ENV["EDAMAM_ID"]}&app_key=#{ENV["EDAMAM_TOKEN"]}&q=#{search}&healthLabels=Gluten-Free"
    print url
    #response getss the url and feeds it to the browser through HTTParty
    response = HTTParty.get(url).parsed_response
    recipes_searched << response
    return response
  end

end
