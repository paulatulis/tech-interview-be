Rails.application.routes.draw do
  resources :answers, only: [:index, :show]
  resources :subjects, only: [:index, :show]
  resources :user_answer_choices, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  resources :quizzes, only: [:index, :show, :create, :destroy]
  resources :quiz_questions, only: [:index, :show, :create]
  
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#login'
  get '/init-state', to: 'sessions#initState'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
