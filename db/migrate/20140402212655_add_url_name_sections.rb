class AddUrlNameSections < ActiveRecord::Migration
  def change
    add_column :sections, :url_name, :string
  end
end
