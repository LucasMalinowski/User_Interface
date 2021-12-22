class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :born_date, :datetime, null: false
    add_column :users, :email, :string, null: false
    add_column :users, :phone_number, :integer, null: false

    change_column_null :users, :city, false
    change_column_null :users, :person_name, false
    change_column_null :users, :postal_code, false
    change_column_null :users, :street, false
    change_column_null :users, :state_id, false
  end
end
