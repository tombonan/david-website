class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.text :topics
      t.text :positions

      t.timestamps null: false
    end
  end
end
