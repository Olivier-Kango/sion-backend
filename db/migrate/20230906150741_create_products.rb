class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: :serial do |t|
      t.string :name
      t.string :image
      t.decimal :unit_price, precision: 10, scale: 2
      t.integer :quantity
      t.string :category
      t.decimal :unit_purchase_price, precision: 10, scale: 2
      t.timestamps
    end

    add_index :products, :id, unique: true

    up if sequence_exists?('products_id_seq')
  end

  def up
    unless sequence_exists?('products_id_seq')
      execute <<-SQL
        CREATE SEQUENCE products_id_seq;
        ALTER TABLE products ALTER COLUMN id SET DEFAULT nextval('products_id_seq');
      SQL

      # Select the ID with the highest in the products table 
      max_id = ActiveRecord::Base.connection.execute("SELECT MAX(id) FROM products").first["max"]
      max_id ||= 0

      execute("ALTER SEQUENCE products_id_seq RESTART WITH #{max_id + 1};")
    end
  end

  def down
    execute "DROP SEQUENCE IF EXISTS products_id_seq;"
  end

  private

  def sequence_exists?(name)
    ActiveRecord::Base.connection.execute("SELECT 1 FROM pg_class WHERE relname = '#{name}'").any?
  end
end
