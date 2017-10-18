require 'rails_helper'

RSpec.feature "Paintings", type: :feature do
  it "should require the owner log in before adding a painting" do
    password = "123456789"
    u = create( :owner, password: password, password_confirmation: password )

    visit new_painting_path

    within "#new_owner" do
      fill_in "owner_email", with: u.email
      fill_in "owner_password", with: password
    end

    click_button "Log in"

    within "#new_painting" do
      fill_in "painting_title", with: "painting title"
      fill_in "painting_year", with: 1976
    end

    click_link_or_button "Create Painting"

    expect( Painting.count ).to eq(1)
    expect( Painting.first.title).to eq("painting title")
  end


end
