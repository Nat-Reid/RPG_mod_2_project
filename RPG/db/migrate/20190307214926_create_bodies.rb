class CreateBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :bodies do |t|
      t.string :name
      t.string :description
      t.string :phrase
      t.belongs_to :world, foreign_key: true
      t.belongs_to :spirit, foreign_key: true

      t.timestamps
    end
  end
end
