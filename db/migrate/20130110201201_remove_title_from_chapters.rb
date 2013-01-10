class RemoveTitleFromChapters < ActiveRecord::Migration
  def up
    remove_column :chapters, :title
  end

  def down
    add_column :chapters, :title, :string
  end
end
