require "rails_helper"

RSpec.describe "Market" do
  describe "User Story 2" do
    it "has the markets information" do
      visit "/markets/322458"

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("1400 U Street NW Washington, District of Columbia 20009")
    end

    it "has the market's vendors" do
      visit "/markets/322482"

      expect(page).to have_link("Saddle Up Smoothies")
      expect(page).to have_link("Bookish Bazaar")
      expect(page).to have_link("The Freshly Squeezed Company")
      expect(page).to have_link("The Sourdough Queen")
      expect(page).to have_link("Colorful Comforts")

      click_link("Saddle Up Smoothies")
      
      expect(current_path).to eq("/vendors/55340")
    end
  end
end