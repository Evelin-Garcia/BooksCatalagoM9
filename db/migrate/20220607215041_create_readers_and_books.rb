class CreateReadersAndBooks < ActiveRecord::Migration[6.1]
  def change
      create_table :books_readers, id: false do |t|
          t.belongs_to :reader
          t.belongs_to :book
      end
  end
end
