class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.integer :obtained
      t.integer :sold

      t.timestamps
    end
  end
end
