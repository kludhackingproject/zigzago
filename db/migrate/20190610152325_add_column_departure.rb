class AddColumnDeparture < ActiveRecord::Migration[5.2]
  def change
    add_column :apisearches, :city_arrival, :string
    add_column :apisearches, :duration, :time
    add_column :favorites, :duration, :time
  end
end
