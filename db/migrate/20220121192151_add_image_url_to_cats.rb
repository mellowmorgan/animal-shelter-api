class AddImageUrlToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :image_url, :string
  end
end
