class AddNoteToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :note, :text
    add_column :users, :ip_address, :string
    add_column :users, :machine_name, :string
    add_column :users, :username, :string
  end
end
