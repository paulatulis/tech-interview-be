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
quiz1 = Quiz.create(title: 'Ruby quiz 1', description: 'test', score: 12, subject_id: ruby.id)
quiz2 = Quiz.create(title: 'React quiz 1', description: 'test', score: 3, subject_id: react.id)
quiz3 = Quiz.create(title: 'JS quiz 1', description: 'test', score: 0, subject_id: js.id)

#Ruby Quiz
rubyq1 = QuizQuestion.create(question_body: 'Which of the expressions will return false?', quiz_id: quiz1.id)
a1rubyq1 = Answer.create(answer_body: "false   ? 'true' : 'false' ", correct: true, quiz_question_id: rubyq1.id)
a2rubyq1 = Answer.create(answer_body: '0       ? "true" : "false"', correct: false, quiz_question_id: rubyq1.id)
a3rubyq1 = Answer.create(answer_body: '""      ? "true" : "false"', correct: false, quiz_question_id: rubyq1.id)
a4rubyq1 = Answer.create(answer_body: "'false' ? 'true' : 'false'", correct: false, quiz_question_id: rubyq1.id)


rubyq2 = QuizQuestion.create(question_body: 'Which is the best way to remove any nil values in an array? ex. remove nil from [nil,123,nil,"test"]', quiz_id: quiz1.id)
a1rubyq2 = Answer.create(answer_body: "[nil,123,nil,'test'].flatten ", correct: false, quiz_question_id: rubyq2.id)
a2rubyq2 = Answer.create(answer_body: "[nil,123,nil,'test'].remove_nil", correct: false, quiz_question_id: rubyq2.id)
a3rubyq2 = Answer.create(answer_body: "[nil,123,nil,'test'].compact", correct: true, quiz_question_id: rubyq2.id)
a4rubyq2 = Answer.create(answer_body: "[nil,123,nil,'test'].sort", correct: false, quiz_question_id: rubyq2.id)

rubyq3 = QuizQuestion.create(question_body: "What is the value of the capitalized variable in the following code: capitalized = ['one', 'two', 'three', 'cat', 'dog', 'parrot'].map {|element| puts element.upcase}", quiz_id: quiz1.id)
a1rubyq3 = Answer.create(answer_body: "['One', 'Two', 'Three', 'Cat', 'Dog', 'Parrot'] ", correct: false, quiz_question_id: rubyq3.id)
a2rubyq3 = Answer.create(answer_body: "['ONE', 'TWO', 'THREE', 'CAT', 'DOG', 'PARROT'] ", correct: false, quiz_question_id: rubyq3.id)
a3rubyq3 = Answer.create(answer_body: "nil", correct: false, quiz_question_id: rubyq3.id)
a4rubyq3 = Answer.create(answer_body: "[nil, nil ,nil, nil, nil, nil]", correct: true, quiz_question_id: rubyq3.id)

rubyq4 = QuizQuestion.create(question_body: "What does this mean? 'a ||= b'", quiz_id: quiz1.id)
a1rubyq4 = Answer.create(answer_body: "if a is true, a = a; otherwise, a = b", correct: true, quiz_question_id: rubyq4.id)
a2rubyq4 = Answer.create(answer_body: "if a exists, and a = b, return true ", correct: false, quiz_question_id: rubyq4.id)
a3rubyq4 = Answer.create(answer_body: "a is true unless a = b", correct: false, quiz_question_id: rubyq4.id)
a4rubyq4 = Answer.create(answer_body: "b = a", correct: false, quiz_question_id: rubyq4.id)





reactq1 = QuizQuestion.create(question_body: 'What is hoisting?', quiz_id: quiz2.id)
a1reactq1 = Answer.create(answer_body: "test", correct: false, quiz_question_id: reactq1.id)
reactq2 = QuizQuestion.create(question_body: 'Here is another sample question', quiz_id: quiz2.id)
reactq3 = QuizQuestion.create(question_body: 'Here is one more sample question', quiz_id: quiz2.id)

jsq1 = QuizQuestion.create(question_body: 'What is hoisting?', quiz_id: quiz3.id)
jsq2 = QuizQuestion.create(question_body: 'Here is another sample question', quiz_id: quiz3.id)
jsq3 = QuizQuestion.create(question_body: 'Here is one more sample question', quiz_id: quiz3.id)

# Answers 



# User Answer Choices
# uac1 = UserAnswerChoice.create(letter: 'c', user_id: paula.id)