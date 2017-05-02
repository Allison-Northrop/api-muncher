require 'HTTParty'
class EdamamSearch

  BASE_URL = 'https://api.edamam.com/search?app_id=0da2202a&app_key=6742a524d0f9cb891fa96ab03339a940'

  # attr_reader :search
  #
  # def initialize(search)
  #   @search = search
  # end

  def self.all_recipes(search)
    url ="#{BASE_URL}/token=#{ENV["EDAMAM_TOKEN"]}"
    response = HTTParty.get(url).parsed_response



  end





end
