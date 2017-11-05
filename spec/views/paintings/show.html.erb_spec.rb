require 'rails_helper'

RSpec.describe "paintings/show", type: :view do
  before(:each) do
    @owner = create( :owner )
    sign_in @owner
    @painting = assign(:painting, Painting.create!(
      :title => "Title",
      :artist => "Artist",
      :year => 2,
      :owner => @owner
    ))
    @comments = []
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Artist/)
    expect(rendered).to match(/2/)
  end
end
