 require_relative '../config/application'
 require 'faker'

   50.times do 
      Task.create(todo: Faker::Lorem.sentence)
    end

