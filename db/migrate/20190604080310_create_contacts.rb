class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :email
      t.text :object
      t.text :description
      t.timestamps
    end
  end
end
