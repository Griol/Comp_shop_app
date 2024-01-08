Rails.application.routes.draw do
  #devise_for :users, :controllers => {
  #  :registrations => "users/registrations"
  #}
#
  #root to: 'home#index'

  root "product#index"

  get "/product", to: "product#index"

end
