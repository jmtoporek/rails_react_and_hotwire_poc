Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :players do
    collection do
      get 'search'
      post 'search'
    end
  end
  namespace :hotwire do
    resources :players do
      collection do
        get 'search'
        post 'search'
      end
    end
  end
  namespace :react_on_rails do
    resources :players do
      collection do
        get 'search'
        post 'search'
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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
