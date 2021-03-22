class CreateShowTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :show_times do |t|
      t.integer   :start_time
      t.integer   :end_time
      t.timestamps
    end
    add_index :show_times, [:start_time, :end_time], unique: true, name: 'show_start_end_time'
  end
end
