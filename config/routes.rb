ProjectManager::Application.routes.draw do
  resources :projects
  root :to => redirect('/projects')
  scope :path => '/projects', :as => 'playlist' do
  match 'playlist/:id' => 'projects#playlist', :via => [:get]
  end
  get 'rest/:id', to: 'rest#show'
  get 'callback', to: 'rest#callback'
end
