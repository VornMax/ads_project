# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  100.times do |n|
    title = Faker::Lorem.sentence
    picture_url = Faker::Lorem.sentence
    body = Faker::Lorem.paragraphs(1)
    created_at = 2.years.ago..Time.now
    user_id = 6
    Post.create!(
               title: title,
               body: body,
               picture_url: title,
               created_at: created_at,
               user_id: 6
                            )
  end
