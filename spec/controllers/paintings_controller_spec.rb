require 'rails_helper'

RSpec.describe PaintingsController, type: :controller do

  before :each do
    @owner = create(:owner)
  end

  let(:valid_attributes) {
    {
      title: "Hello world",
      year: 1965,
      owner: @owner
    }
  }

  let(:valid_session) {
    {}
  }

  describe "GET #index" do
    it "returns a success response" do
      painting = Painting.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      painting = Painting.create! valid_attributes
      sign_in @owner
      get :edit, params: {id: painting.id}, session: valid_session
      expect(response).to be_success
    end

    it "returns a 401 if no one is signed in" do
      painting = Painting.create! valid_attributes
      get :edit, params: {id: painting.id}, session: valid_session
      expect(response).to be_redirect
      expect(response.location).to include("owners/sign_in")
    end
  end
end
