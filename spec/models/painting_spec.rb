require 'rails_helper'

RSpec.describe Painting, type: :model do
  it 'should raise an error without an owner' do
    painting = Painting.new()
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'should raise an error without a title' do
    owner = create(:owner)
    painting = Painting.new(owner: owner)
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'should raise an error without a year' do
    owner = create(:owner)
    painting = Painting.new(owner: owner, title: "example")
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  it 'should raise an error without a year in the past' do
    owner = create(:owner)
    painting = Painting.new(owner: owner, title: "example", year: 2375)
    expect{painting.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end
end
