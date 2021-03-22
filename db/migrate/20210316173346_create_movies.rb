class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string    :title, null: false
      t.text      :description, null: true
      t.string    :cast, null: true
      t.integer   :duration, default: 0
      t.datetime  :first_screen_date, null: true
      t.datetime  :last_screen_date, null: true
      t.boolean   :is_active, default: false
      t.timestamps
    end
    add_index :movies, :title, unique: true
  end
end
