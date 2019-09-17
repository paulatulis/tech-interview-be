class User < ApplicationRecord
    has_secure_password
    has_many :user_answer_choices
    has_many :quiz_events
    has_many :quizzes, through: :quiz_events 
end
