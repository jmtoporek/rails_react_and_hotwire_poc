Rails.application.routes.draw do
  resources :players
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

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
