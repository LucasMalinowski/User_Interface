class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :person_name
      t.string :street
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :person_image

      t.timestamps
    end
  end
end
