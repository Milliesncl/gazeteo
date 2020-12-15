class CreateGazettes < ActiveRecord::Migration[6.0]
  def change
    create_table :gazettes do |t|

      t.timestamps
    end
  end
end
