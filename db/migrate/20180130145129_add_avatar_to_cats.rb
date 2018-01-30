class AddAvatarToCats < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :avatar, :string
  end
end
