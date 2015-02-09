class AddColumnsToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :full_url, :string
    add_column :urls, :slug, :string
    add_column :urls, :title, :string
  end
end
