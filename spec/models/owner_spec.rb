require 'rails_helper'

RSpec.describe Owner, type: :model do
  it 'needs an email less than 36 characters' do
    owner = Owner.new(email: "arblasdfaisodfonasdfoinasndofinansdofnnaoisdnfoiansdof@gmail.com", password: "1234567", password_confirmation: "1234567")
    expect{owner.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end


  it 'should accept valid input' do
    owner = Owner.new(email: "hello@gmail.com", password: "1234567", password_confirmation: "1234567")
    expect(owner.save!).to be true
  end
end
