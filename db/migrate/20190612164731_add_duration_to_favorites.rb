class AddDurationToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :duration, :time
  end
end
