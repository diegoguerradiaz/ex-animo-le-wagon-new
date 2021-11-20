class RemovePhoneNumber < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :phone_numer
  end
end
