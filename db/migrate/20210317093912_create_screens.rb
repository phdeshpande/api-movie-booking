class CreateScreens < ActiveRecord::Migration[6.0]
  def change
    create_table :screens do |t|
      t.string  :name, null: false
      t.integer :capacity, default: 0
      t.boolean :status, default: 0
      t.timestamps
    end
  end
end
