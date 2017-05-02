require 'test_helper'

describe EdamamSearch do

  describe "initialize" do
    it "takes a search"
      search = "hummus test search"
      edamam_search = EdamamSearch.new(search)
      edamam_search.search.must_equal search
    end

    it "requires a search before searching" do
    end
  end
