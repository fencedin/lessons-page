class CreateChapter < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.column :name, :string
      t.column :url_name, :string
      t.column :number, :int
      t.timestamps
    end
    add_column :sections, :number, :int
  end
end
