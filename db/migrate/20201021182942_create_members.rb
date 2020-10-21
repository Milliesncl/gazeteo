class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.date :birthday
      t.references :family, null: false, foreign_key: true
      t.timestamps
    end
  end
end
