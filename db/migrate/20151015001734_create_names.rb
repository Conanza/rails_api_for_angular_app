class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :names, :name
  end
end
