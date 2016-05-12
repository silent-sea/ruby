class Createheross < ActiveRecord::Migration
  def change
    create_table :heross do |t|
      t.string :name
      t.integer :daysalive
      t.integer :level
      t.integer :exp
      t.string :class
      t.integer :health
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
