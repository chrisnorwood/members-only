# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  'Chris', 
             email: 'chris@example.com',
             password:              'foobar',
             password_confirmation: 'foobar')

User.create!(name:  'Joshua', 
             email: 'josh@example.com',
             password:              'foobar',
             password_confirmation: 'foobar')

User.create!(name:  'Melissa', 
             email: 'melissa@example.com',
             password:              'foobar',
             password_confirmation: 'foobar')

User.create!(name:  'Timoteas', 
             email: 'tim@example.com',
             password:              'foobar',
             password_confirmation: 'foobar')

Post.create(user_id: 1,
            body: 'Sneaky sneaky sneakrets!!!')

Post.create(user_id: 3,
            body: 'Why u do it mang!!')

Post.create(user_id: 4,
            body: 'Uh oh.  I think I figured out who posted these.')

Post.create(user_id: 2,
            body: "Truth be told, I don't even like bananas.")

Post.create(user_id: 1,
            body: "Slippery slippery slope writing such nonsense.")