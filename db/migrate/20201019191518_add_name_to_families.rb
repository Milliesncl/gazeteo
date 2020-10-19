class AddNameToFamilies < ActiveRecord::Migration[6.0]
  def change
    add_column :families, :name, :string
  end
end
