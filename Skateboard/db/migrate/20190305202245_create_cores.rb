class CreateCores < ActiveRecord::Migration[5.2]
  def change
    create_table :cores do |t|
      t.belongs_to :deity
      t.belongs_to :body, default: nil
      t.string :essence

      t.timestamps
    end
  end
end
