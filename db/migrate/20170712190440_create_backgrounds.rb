class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.text :about
      t.text :contact

      t.timestamps null: false
    end
  end
end
