class AddColumnUrlname < ActiveRecord::Migration
  def change
    add_column :lessons, :url_name, :string
  end
end
