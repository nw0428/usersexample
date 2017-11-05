require 'rails_helper'

class ExampleForTest

  def addition(arg1, arg2)
    return arg1 + arg2
  end
end

describe ExampleForTest do
  it 'Should be able to do addition' do
    example = ExampleForTest.new
    expect(example.addition(1, 1)).to be 2
  end

  it 'Should fail if given a nil' do
    example = ExampleForTest.new
    expect{example.addition(1, nil)}.to raise_error(TypeError)
  end
end


