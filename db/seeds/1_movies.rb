# Seeding Movies
# rake db:seed:1_movies
5.times do
  Movie.create!([
    { title: Faker::Movie.title,
      description: Faker::Movie.quote,
      cast: Faker::Movies::Departed.actor,
      duration: 90,
      first_screen_date: DateTime.now,
      last_screen_date: DateTime.now + 5,
      is_active: true
    }
  ])
end
