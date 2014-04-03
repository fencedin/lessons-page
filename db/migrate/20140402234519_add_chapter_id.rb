class AddChapterId < ActiveRecord::Migration
  def change
    add_column :sections, :chapter_id, :int
  end
end
