# Seeding Screens
# rake db:seed:3_tariff_types
seating_types = [{name: 'U', price: 10.0}, {name: 'L', price: 5.0}]

seating_types.each do |type|
  TariffType.create!(
    {
      position: type[:name],
      price: type[:price],
      tax_percentage: 1.0
    }
  )
end
