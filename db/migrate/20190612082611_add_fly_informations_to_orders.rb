class AddFlyInformationsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :city_departure, :string
    add_column :orders, :destination, :string
    add_column :orders, :price, :decimal
    add_column :orders, :departure_date, :datetime
    add_column :orders, :arrival_date, :datetime
    add_column :orders, :duration, :string
    add_column :orders, :back_citydeparture, :string
    add_column :orders, :back_destination, :string
    add_column :orders, :back_departuredate, :datetime
    add_column :orders, :back_arrivaldate, :datetime
    add_column :orders, :back_duration, :string
  end
end
