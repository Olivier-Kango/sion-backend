class CreateRequestedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :requested_products do |t|
      t.string :name
      t.integer :request_count

      t.timestamps
    end
  end
end
