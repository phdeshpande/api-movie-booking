class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references  :user
      t.references  :screening
      t.boolean     :status, default: false
      t.float       :total_price
      t.timestamps
    end
  end
end
