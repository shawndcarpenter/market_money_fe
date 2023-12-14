require "rails_helper"

RSpec.describe "Vendor" do
  describe "User Story 3" do
    it "has the vendors information" do
      visit "/vendors/56162"

      expect(page).to have_content("Colorful Comforts")
      expect(page).to have_content("Contact Info:")
      expect(page).to have_content("Name: Farrah Crist")
      expect(page).to have_content("Phone: 1-321-896-0792")
      expect(page).to have_content("Credit Accepted?: NO")
      expect(page).to have_content("Description: Colorful and cozy clothing and accessories.")
    end
  end
end