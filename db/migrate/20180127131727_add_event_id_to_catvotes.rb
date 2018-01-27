class AddEventIdToCatvotes < ActiveRecord::Migration[5.1]
  def change
  	add_column :catvotes, :event_id, :integer
  end
end
