class AddRiddleAndAnswerToDeity < ActiveRecord::Migration[5.2]
  def change
    change_table :deities do |t|
      t.string :riddle
      t.string :answer
    end
  end
end
