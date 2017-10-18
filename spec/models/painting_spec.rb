require 'rails_helper'

RSpec.describe Painting, type: :model do
  it 'needs an owner' do
    painting = Painting.new()
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'needs a title' do
    owner = create(:owner)
    painting = Painting.new(owner: owner)
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'needs a title and a year' do
    owner = create(:owner)
    painting = Painting.new(owner: owner, title: "example")
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'needs a year in the past' do
    owner = create(:owner)
    painting = Painting.new(owner: owner, title: "example", year: 2375)
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end
end
