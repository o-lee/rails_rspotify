require 'rails_helper'

describe ProjectsController do
  describe 'Searching Spotify' do 

    before :each do
      @fake_results = mock_model(Project)
    end

    it 'should call a method that performs Spotify search' do
      expect(Project).to receive(:find).with('chill').and_return(@fake_results)
      post :show, {:id => 'chill'}
    end

    it 'should select the Search Results tmeplate for rendering' do
      expect(Project).to receive(:find).and_return(@fake_results)
      post :show, {:id => 'chill'}
      expect(response).to render_template('projects/show')
    end


  end
end
