class Addusernametospirits < ActiveRecord::Migration[5.2]
  def change
    change_table :spirits do |t|
      t.string :username
      t.string :password_digest
    end
  end
end
