Rails.application.routes.draw do
  resources :students
  devise_for :users
  resources :sections do
    collection do
      get 'search'
    end

  end
  resources :courses do
    collection do
      get 'search'
    end
  end


  root to: "welcome#index"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
