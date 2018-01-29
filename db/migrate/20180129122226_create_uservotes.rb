class CreateUservotes < ActiveRecord::Migration[5.1]
  def change
    create_table :uservotes do |t|

    	t.integer :event_id
    	t.integer :user_id
    	t.boolean :goodevent
    	t.string :text

      t.timestamps
    end
  end
end
