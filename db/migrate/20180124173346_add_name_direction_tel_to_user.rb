class AddNameDirectionTelToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :street, :string
  	add_column :users, :city, :string
  	add_column :users, :zip_code, :integer, limit: 8
  	add_column :users, :state, :string
  	add_column :users, :tel, :integer, limit: 8
  	add_column :users, :mobile, :integer, limit: 8
  	add_column :users, :getcat, :boolean
  end
end
