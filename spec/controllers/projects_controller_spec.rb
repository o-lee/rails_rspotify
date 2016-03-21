require 'rails_helper'

describe ProjectsController do
  describe 'Searching Spotify' do
    it 'should call a method that performs Spotify search' do
      expect(Project).to receive(:find_in_spotify).with('chill')
      post :search_spotify, {:search_terms => 'chill'}
    end

    it 'should select the Search Results tmeplate for rendering' do
      Project.double(:find_in_spotify)
      post :search_spotify, {:search_terms => 'chill'}
      expect(response).to render_template('search_spotify')
    end

  end
end
