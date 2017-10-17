require 'rails_helper'

RSpec.describe Painting, type: :model do
  before :each do
    # This simulates an owner
    @owner = create(:owner)
  end

  it "should raise an error without a title" do
    painting = Painting.new(owner: @owner)
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "should raise an error without a user" do
    painting = Painting.new(title: "Example title")
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "should save if it has a title and a user and an artist" do
    painting = Painting.new(title: "Example title", artist: "Van Gogh", owner: @owner)
    expect(painting.save!).to eq true
  end
end
