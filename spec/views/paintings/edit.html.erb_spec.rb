require 'rails_helper'

RSpec.describe "paintings/edit", type: :view do
  before(:each) do
    @owner = create(:owner)
    sign_in @owner
    @painting = assign(:painting, Painting.create!(
      :title => "MyString",
      :artist => "MyString",
      :year => 1,
      :owner => @owner
    ))
  end

  it "renders the edit painting form" do
    render

    assert_select "form[action=?][method=?]", painting_path(@painting), "post" do

      assert_select "input[name=?]", "painting[title]"

      assert_select "input[name=?]", "painting[artist]"

      assert_select "input[name=?]", "painting[year]"
    end
  end
end
