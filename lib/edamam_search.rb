require 'HTTParty'
class EdamamSearch

  BASE_URL = 'https://api.edamam.com/search'
  # attr_reader :search
  #
  # def initialize(search)
  #   @search = search
  # end

  def self.all_recipes(search)
    url ="#{BASE_URL}/#{ENV["EDAMAM_ID"]}/#{ENV["EDAMAM_TOKEN"]}/q=#{search}"
    response = HTTParty.get(url).parsed_response



  end





end
