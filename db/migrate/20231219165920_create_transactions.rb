class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :movement_type
      t.integer :quantity
      t.string :reason
      t.string :note

      t.timestamps
    end
  end
end
