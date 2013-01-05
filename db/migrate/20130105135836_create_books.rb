class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :edition
      t.string :publisher
      t.string :isbn10
      t.string :isbn13
      t.text :description

      t.timestamps
    end
  end
end
