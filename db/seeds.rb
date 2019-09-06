# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Quiz.destroy_all
QuizQuestion.destroy_all
Subject.destroy_all
UserAnswerChoice.destroy_all
Answer.destroy_all

# Users
paula = User.create(username: 'paula', password: '1234')
andy = User.create(username: 'andy', password: '1234')

# Subjects 
ruby = Subject.create(name: 'Ruby')
js = Subject.create(name: 'JavaScript')
react = Subject.create(name: 'React')

# Quizzes
quiz1 = Quiz.create(title: 'Ruby quiz 1', description: 'test', score: 12, user_id: andy.id, subject_id: ruby.id)
quiz2 = Quiz.create(title: 'React quiz 1', description: 'test', score: 3, user_id: andy.id, subject_id: react.id)
quiz3 = Quiz.create(title: 'JS quiz 1', description: 'test', score: 0, user_id: paula.id, subject_id: js.id)

#  Quiz Questions
rubyq1 = QuizQuestion.create(question_body: 'Who created Ruby?', quiz_id: quiz1.id)
rubyq2 = QuizQuestion.create(question_body: 'Here is another sample question', quiz_id: quiz1.id)
rubyq3 = QuizQuestion.create(question_body: 'Here is one more sample question', quiz_id: quiz1.id)

reactq1 = QuizQuestion.create(question_body: 'What is hoisting?', quiz_id: quiz2.id)
reactq2 = QuizQuestion.create(question_body: 'Here is another sample question', quiz_id: quiz2.id)
reactq3 = QuizQuestion.create(question_body: 'Here is one more sample question', quiz_id: quiz2.id)

jsq1 = QuizQuestion.create(question_body: 'What is hoisting?', quiz_id: quiz3.id)
jsq2 = QuizQuestion.create(question_body: 'Here is another sample question', quiz_id: quiz3.id)
jsq3 = QuizQuestion.create(question_body: 'Here is one more sample question', quiz_id: quiz3.id)

# Answers 

a1rubyq1 = Answer.create(answer_body: 'your mom', correct: false, quiz_question_id: rubyq1.id)
a1rubyq1 = Answer.create(answer_body: 'your dad', correct: false, quiz_question_id: rubyq1.id)
a1rubyq1 = Answer.create(answer_body: 'Yukihiro Matsumoto', correct: true, quiz_question_id: rubyq1.id)

# User Answer Choices
uac1 = UserAnswerChoice.create(letter: 'c', user_id: paula.id)