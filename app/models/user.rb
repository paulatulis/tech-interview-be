class User < ApplicationRecord
    has_secure_password
    has_many :user_answer_choices
    has_many :quizzes
    has_many :subjects, through: :quizzes 
end
