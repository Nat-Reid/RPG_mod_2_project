class CreateDeities < ActiveRecord::Migration[5.2]
  def change
    create_table :deities do |t|
      t.string :name
      t.string :description
      t.string :phrase
      t.string :riddle
      t.string :answer
      t.boolean :defeated
      t.belongs_to :world, foreign_key: true

      t.timestamps
    end
  end
end
