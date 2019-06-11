class AddColumnDeparture < ActiveRecord::Migration[5.2]
  def change
    add_column :apisearches, :city_arrival, :string
  end
end
