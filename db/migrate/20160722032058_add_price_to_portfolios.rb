class AddPriceToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :price, :string
  end
end
