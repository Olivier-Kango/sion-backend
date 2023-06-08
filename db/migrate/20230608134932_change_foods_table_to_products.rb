class ChangeFoodsTableToProducts < ActiveRecord::Migration[7.0]
  def change
    rename_table :foods, :products
  end
end
