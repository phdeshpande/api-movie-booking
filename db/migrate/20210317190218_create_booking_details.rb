class CreateBookingDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_details do |t|
      t.references  :booking
      t.references  :seating
      t.float       :unit_price
      t.timestamps default: -> { 'CURRENT_TIMESTAMP' }
    end
    add_index :booking_details, [:booking_id, :seating_id ], unique: true, name: 'booking_seat_id'
  end
end
