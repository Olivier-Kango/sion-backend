class ChangeUnitPriceToDecimalInProducts < ActiveRecord::Migration[7.0]
  def change
    def up
      change_column :products, :unit_price, :decimal, precision: 10, scale: 2
    end
  
    def down
      change_column :products, :unit_price, :integer
    end
  end
end
