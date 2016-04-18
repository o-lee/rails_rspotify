require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'Searching Spotify' do

    it 'should call a method that performs Spotify search' do
      expect(@artists).to receive(:find).with('David Bowie').and_return(@artists)
      get :show, {:id => 'David Bowie'}
    end

    it 'should select the Search Results tmeplate for rendering' do
      expect(@artists).to receive(:find).and_return(@artists)
      post :show, {:id => 'David Bowie'}
      expect(response).to redirect_to(artist_path)
    end
  end
end