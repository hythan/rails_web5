class AddAvatarToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :avatar, :string
  end
end
