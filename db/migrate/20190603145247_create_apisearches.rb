class CreateApisearches < ActiveRecord::Migration[5.2]
  def change
    create_table :apisearches do |t|
      t.string :city_departure
      t.decimal :price
      t.datetime :departure_date
      t.datetime :return_date
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end