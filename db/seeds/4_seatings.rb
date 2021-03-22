# Seeding Seatings
# rake db:seed:4_seatings
scr = Screen.first
seat_type = TariffType.find_by position: 'U'
puts "Seeding TariffType first! `rake db:seed:3_tariff_types`" if seat_type.nil?

5.times do |i|
  scr.seatings.create!({
    section: '',
    number: i+1,
    tariff_type_id: seat_type.id
  })
end

seat_type = TariffType.find_by position: 'L'

5.times do |i|
  scr.seatings.create!({
    section: '',
    number: i+1,
    tariff_type_id: seat_type.id
  })
end
