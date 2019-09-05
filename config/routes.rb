Rails.application.routes.draw do
  resources :answers
  resources :subjects
  resources :user_answer_choices
  resources :users
  resources :quizzes
  resources :quiz_answers
  resources :question_options
  resources :quiz_questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
