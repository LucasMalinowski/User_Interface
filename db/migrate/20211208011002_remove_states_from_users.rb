class RemoveStatesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :state
  end
end
