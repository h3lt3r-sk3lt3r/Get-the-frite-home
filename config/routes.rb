Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :stalls do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: :destroy

  patch "bookings/:id/accepted", to: "bookings#accepted"
  patch "bookings/:id/declined", to: "bookings#declined"
  get "/mystalls", to: "stalls#mystalls"
end
