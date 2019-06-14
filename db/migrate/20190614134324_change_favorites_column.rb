class ChangeFavoritesColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :favorites, :departure_date, :string
    change_column :favorites, :return_date, :string
    change_column :favorites, :back_departure_date, :string
    change_column :favorites, :back_return_date, :string
    change_column :favorites, :back_duration, :string
    change_column :favorites, :duration, :string
  end
end
