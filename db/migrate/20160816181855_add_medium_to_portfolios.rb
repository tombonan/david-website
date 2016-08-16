class AddMediumToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :medium, :string
    add_column :portfolios, :dimensions, :string
  end
end
