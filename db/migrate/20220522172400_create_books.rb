class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :image_url
      t.date :publication_date
      t.decimal :price

      t.timestamps
    end
  end
end
