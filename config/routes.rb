Rails.application.routes.draw do
  get 'welcome/practice'

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#practice'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
