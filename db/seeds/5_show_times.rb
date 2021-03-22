# Seeding Screenings
# rake db:seed:5_show_time
# 12-3, 3-6, 6-9, 9-12
[[12, 15], [15, 18], [18, 21], [21, 0]].each do |show|
  ShowTime.create!({
    start_time: show[0],
    end_time: show[1]
  })
end
