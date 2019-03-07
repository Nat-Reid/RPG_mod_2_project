class CreateCores < ActiveRecord::Migration[5.2]
  def change
    create_table :cores do |t|
      t.string :essence
      t.belongs_to :body, foreign_key: true
      t.belongs_to :deity, foreign_key: true

      t.timestamps
    end
  end
end
