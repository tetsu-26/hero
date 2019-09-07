class CreateTranzactions < ActiveRecord::Migration[5.2]
  def change
    create_table :tranzactions do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.text :comment
      t.timestamps
    end
  end
end
