class AddColumnsFavoritesBack < ActiveRecord::Migration[5.2]
  def change
  	add_column :favorites, :back_city_departure, :string
    add_column :favorites, :back_destination, :string
    add_column :favorites, :back_departure_date, :datetime
    add_column :favorites, :back_return_date, :datetime
    add_column :favorites, :back_duration, :time
  end
end