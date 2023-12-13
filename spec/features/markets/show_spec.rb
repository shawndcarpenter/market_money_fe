require "rails_helper"

RSpec.describe "Market" do
  describe "User Story 2" do
    it "has the markets information" do
      visit "/markets/322458"

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("1400 U Street NW Washington, District of Columbia 20009")
    end

    xit "has the market's vendors" do
      
    end
  end
end