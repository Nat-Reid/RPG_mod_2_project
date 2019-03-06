class CreateBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :bodies do |t|
      t.string :name
      t.string :description
      t.belongs_to :world
      t.belongs_to :spirit

      t.timestamps
    end
  end
end
