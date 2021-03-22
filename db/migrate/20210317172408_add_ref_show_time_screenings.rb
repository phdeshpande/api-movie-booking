class AddRefShowTimeScreenings < ActiveRecord::Migration[6.0]
  def change
    add_reference :screenings, :show_time
    add_index :screenings, [:movie_id, :screen_id, :show_time_id, :show_day], unique: true, name: 'movie_screening_show_time'
  end
end
