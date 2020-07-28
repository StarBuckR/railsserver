class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.string :machine_name
      t.string :message

      t.timestamps
    end
  end
end
