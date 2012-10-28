require 'spec_helper'

describe "Clubs" do
  describe "GET /clubs" do
  	fixtures :clubs
  	before do
        sign_in
      	visit clubs_path
      	click_link "New Club"
    end  
    it "works!", js: true do
      click_on("Create Club")
      fill_in("Name", :with => "Penn Wow")
      error_message1 = "Url can't be blank"
      error_message2 = "Contact can't be blank"
      error_message3 = "Description can't be blank"
      page.should have_content(error_message1) and page.should have_content(error_message1) and page.should have_content(error_message1)
    end
    it "includes all params", js: true do
      fill_in("Name", :with => "Penn Wow")
      fill_in("Contact", :with  => "Someone")
      fill_in("Url", :with =>"pennwow.com")
      fill_in("Description", :with => "A Singing Group")
      click_on("Create Club")
      page.should have_content "Club was successfully created."
    end
  end
end
