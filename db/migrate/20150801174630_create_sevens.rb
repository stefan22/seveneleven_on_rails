class CreateSevens < ActiveRecord::Migration
  def change
    create_table :sevens do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
