class CreateSeatings < ActiveRecord::Migration[6.0]
  def change
    create_table :seatings do |t|
      t.references :screen
      t.string     :section, null: true
      t.integer    :number, null: false
      t.timestamps
    end
  end
end
