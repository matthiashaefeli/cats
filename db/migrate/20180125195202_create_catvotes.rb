class CreateCatvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :catvotes do |t|

    	t.integer :cat_id
    	t.integer :user_id
    	t.boolean :goodcat
    	t.string :text

      t.timestamps
    end
  end
end
