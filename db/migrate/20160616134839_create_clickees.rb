class CreateClickees < ActiveRecord::Migration
  def change
    create_table :clickees do |t|
      t.integer :x
      t.integer :y

      t.timestamps null: false
    end
  end
end
