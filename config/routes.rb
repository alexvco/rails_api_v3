Rails.application.routes.draw do
  namespace "api" do
    namespace "v1" do
      resources :locations do
        resources :recordings
      end
    end
  end



  # match '/api/v1/locations'                 =>    'api/v1/locations#index',              via: [:get],           as: :api_v1_locations
  # match '/api/v1/locations'                 =>    'api/v1/locations#create',             via: [:post]
  # match '/api/v1/locations/:id'             =>    'api/v1/locations#show',               via: [:get],           as: :api_v1_location
  # match '/api/v1/locations/:id'             =>    'api/v1/locations#update',             via: [:patch]
  # match '/api/v1/locations/:id'             =>    'api/v1/locations#update',             via: [:put]
  # match '/api/v1/locations/:id'             =>    'api/v1/locations#destroy',            via: [:delete]

end
