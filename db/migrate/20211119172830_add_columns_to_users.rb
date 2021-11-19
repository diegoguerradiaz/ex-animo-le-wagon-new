class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company_name, :string
    add_column :users, :phone_numer, :integer
    add_column :users, :category, :string
    add_column :users, :role, :string
  end
end
