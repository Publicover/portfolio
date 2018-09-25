Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :apps do
    resources :teches
  end

  resources :jobs

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'resumes/write_email' => 'resumes#write_email'
  post 'resumes/send_email' => 'resumes#send_email'

  root 'dashboards#index'
end
