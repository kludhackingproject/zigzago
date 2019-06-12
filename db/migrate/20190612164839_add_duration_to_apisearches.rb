class AddDurationToApisearches < ActiveRecord::Migration[5.2]
  def change
    add_column :apisearches, :duration, :time
  end
end
