require "rails_helper"

RSpec.describe "Vendor" do
  describe "User Story 3" do
    it "has the vendors information", :vcr do
      visit "/vendors/56162"

      expect(page).to have_content("Colorful Comforts")
      expect(page).to have_content("Contact Info:")
      expect(page).to have_content("Name: Farrah Crist")
      expect(page).to have_content("Phone: 1-321-896-0792")
      expect(page).to have_content("Credit Accepted?: NO")
      expect(page).to have_content("Description: Colorful and cozy clothing and accessories.")
    end
  end

  describe "User Story 4 and 5" do
    it "can search for markets", :vcr do
      visit "/vendors/56162"

      expect(page).to have_content("Search for Markets to add this vendor:")

      fill_in :state, with: "New Mexico"
      fill_in :name, with: "Cloudcroft"
      click_button("Search")

      expect(current_path).to eq("/vendors/56162")
      expect(page).to have_link("Cloudcroft Farmers Market")

      click_link("Cloudcroft Farmers Market")

      expect(current_path).to eq("/markets/323892")
      # expect(page).to have_content("Search Results Information - CHECK WIREFRAMES")
    end

    it "can add market vendor", :vcr do
      visit "/vendors/56162"
      fill_in :state, with: "New Mexico"
      fill_in :name, with: "Cloudcroft"
      click_button("Search")
      click_button("Add Market")
      visit "/markets/323892"

      expect(page).to have_link("Colorful Comforts")
    end

    describe "sad paths", :vcr do
      it "will give an error if incorrect search parameters are used" do 
        visit "/vendors/56162"
        fill_in :city, with: "New Mexico"
        click_button("Search")

        expect(page).to have_content("Invalid set of parameters. Please provide a valid set of parameters to perform a search with this endpoint.")
      end

      it "will give a message if no markets are found", :vcr do 
        visit "/vendors/56162"
        fill_in :state, with: "Not a State"
        click_button("Search")

        expect(page).to have_content("No Markets found which meet these search criteria.")
      end
    end
  end
end