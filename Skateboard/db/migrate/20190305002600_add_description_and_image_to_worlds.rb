class AddDescriptionAndImageToWorlds < ActiveRecord::Migration[5.2]
  def change
    add_column :worlds, :description, :text
    add_column :worlds, :url, :string
  end
end
