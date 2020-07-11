Rails.application.routes.draw do
  devise_for :managers
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/', module: :web, as: :web do 
    root to: "home#index"
  end 

  scope '/admin', module: :admin, as: :admin do 
    root to: "dashboard#index"
  end
  
end
