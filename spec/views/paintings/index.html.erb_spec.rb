require 'rails_helper'

RSpec.describe "paintings/index", type: :view do
  before(:each) do
    @owner = create(:owner)
    sign_in @owner
    assign(:paintings, [
      Painting.create!(
        :title => "Title",
        :artist => "Artist",
        :year => 2,
        :owner => @owner
      ),
      Painting.create!(
        :title => "Title",
        :artist => "Artist",
        :year => 2,
        :owner => @owner
      )
    ])
  end

  it "renders a list of paintings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
