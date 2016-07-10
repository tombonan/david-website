class AddCategoryToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :category, :string
  end
end
