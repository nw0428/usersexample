require 'rails_helper'

RSpec.describe "paintings/new", type: :view do
  before(:each) do
    sign_in create(:owner)
    assign(:painting, Painting.new(
      :title => "MyString",
      :artist => "MyString",
      :year => 1
    ))
  end

  it "renders new painting form" do
    render
      assert_select "form[action=?][method=?]", paintings_path, "post" do

      assert_select "input[name=?]", "painting[title]"

      assert_select "input[name=?]", "painting[artist]"

      assert_select "input[name=?]", "painting[year]"
    end
  end
end