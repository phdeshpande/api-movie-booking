class CreateScreenings < ActiveRecord::Migration[6.0]
  def change
    create_table :screenings do |t|
      t.references  :movie
      t.references  :screen
      t.date        :show_day, default: Date.today
      t.timestamps
    end
  end
end
