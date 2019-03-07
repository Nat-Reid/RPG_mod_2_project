class AddDefeatedToWorlds < ActiveRecord::Migration[5.2]
  def change
    add_column :worlds, :defeated, :boolean
  end
end
