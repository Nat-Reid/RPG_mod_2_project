class AddDefeatedToDeities < ActiveRecord::Migration[5.2]
  def change
    add_column :deities, :defeated, :boolean
  end
end
