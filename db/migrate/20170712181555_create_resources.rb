class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :document

      t.timestamps null: false
    end
  end
end
