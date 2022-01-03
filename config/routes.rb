Rails.application.routes.draw do
  #get 'hello_world', to: 'hello_world#index'
  resources :players do
    collection do
      get 'search'
      # post 'search'
      # get 'get_players_html' # does this work? do we keep this?
    end
  end
  namespace :turbo do
    resources :players
  end
  namespace :react_on_rails do
    resources :players do
      collection do
        get 'search'
        #post 'search'
      end
    end
  end
  namespace :jquery do
    resources :players do
      collection do
        get 'search'
        post 'search'
        get 'players_frame'
      end
    end
  end
  namespace :poj do
    resources :players do
      collection do
        get 'search'
        post 'search'
        get 'players_frame'
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
