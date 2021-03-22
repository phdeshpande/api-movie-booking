# Seeding Screenings
# rake db:seed:6_screenings

movie = Movie.first
screen = Screen.first
show_time = ShowTime.all

show_time.each do |show|
  movie.screenings.create!({
    movie_id: movie.id,
    screen_id: screen.id,
    show_time_id: show.id
  })
end
