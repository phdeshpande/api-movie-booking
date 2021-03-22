# Seeding Screens
# rake db:seed:2_screens
3.times do |i|
  Screen.create!({
    name: "Screen-#{i+1}",
    capacity: 100,
    status: true,
  })
end
