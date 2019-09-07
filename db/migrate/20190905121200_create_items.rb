class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false, index: true
      t.text :description
      t.string :image
      t.string :state, null: false
      t.integer :price, null: false
      t.string :local
      t.references :user, foreign_key: true
      t.references :buyer, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
