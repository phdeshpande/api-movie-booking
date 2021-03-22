class AddRefTariffTypeSeatings < ActiveRecord::Migration[6.0]
  def change
    add_reference :seatings, :tariff_type
  end
end
