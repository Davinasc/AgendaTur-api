Rails.application.routes.draw do
  resources :tours

  resources :guides do
    get 'tours', to: 'tours#guide_tours'
    get 'tours/:id', to: 'tours#show_guide_tour'
  end

  resources :destinies do
    get 'tours', to: 'tours#destiny_tours'
    get 'tours/:id', to: 'tours#show_destiny_tour'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
