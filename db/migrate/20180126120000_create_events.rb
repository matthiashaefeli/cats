class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|

    	t.integer :care_user_id
    	t.integer :cat_id
    	t.date :start
    	t.date :end
    	t.integer :price

      t.timestamps
    end
  end
end
