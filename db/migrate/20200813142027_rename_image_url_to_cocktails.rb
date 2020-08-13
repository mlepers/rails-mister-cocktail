class RenameImageUrlToCocktails < ActiveRecord::Migration[6.0]
  def change
    rename_column :cocktails, :ImageUrl, :image_url
  end
end
