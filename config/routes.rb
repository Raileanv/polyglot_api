Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'training_room/next_sentence'
      patch 'training_room/users_response'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
