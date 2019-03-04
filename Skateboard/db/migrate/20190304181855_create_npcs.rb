class CreateNpcs < ActiveRecord::Migration[5.2]
  def change
    create_table :npcs do |t|
      t.string :name
      t.string :description
      t.string :phrase
      t.belongs_to :world

      t.timestamps
    end
  end
end
