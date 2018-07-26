class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :document, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :address, :string
    add_column :users, :telephone, :string
  end
end
