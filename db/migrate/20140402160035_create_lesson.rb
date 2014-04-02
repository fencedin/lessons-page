class CreateLesson < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :content, :text
      t.column :number, :int
      t.timestamps
    end
  end
end
