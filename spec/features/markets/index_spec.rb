require "rails_helper"

RSpec.describe "Markets Index" do
  describe "User Story 1" do
    it "shows markets with name, city and state" do
      visit "/markets"

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("Barnesville Farmers Market")
      expect(page).to have_content("Berea")
      expect(page).to have_content("Mississippi")
      expect(page).to have_content("Washington")
      expect(page).to have_content("District of Columbia")
    end

    it "has a clickable link to go to each markets' show page" do
      visit "/markets"
      
      within("#market-#{322458}") do
        expect(page).to have_button("More Info")

        click_button("More Info")
      end

      expect(current_path).to eq("/markets/322458")
    end
  end
end