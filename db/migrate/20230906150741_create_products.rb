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

    create_sequence if sequence_missing?('products_id_seq')
    restart_sequence if sequence_exists?('products_id_seq')
  end

  private

  def create_sequence
    execute <<-SQL
      CREATE SEQUENCE products_id_seq;
      ALTER TABLE products ALTER COLUMN id SET DEFAULT nextval('products_id_seq');
    SQL
  end

  def restart_sequence
    max_id = ActiveRecord::Base.connection.execute("SELECT MAX(id) FROM products").first["max"]
    max_id ||= 0
    execute("ALTER SEQUENCE products_id_seq RESTART WITH #{max_id + 1};")
  end

  def sequence_exists?(name)
    ActiveRecord::Base.connection.execute("SELECT 1 FROM pg_class WHERE relname = '#{name}'").any?
  end

  def sequence_missing?(name)
    !sequence_exists?(name)
  end
end